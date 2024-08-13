import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ApiService } from '../../../services/api.service';
import { Router } from '@angular/router';
import { AuthService } from '../../../services/auth.service';

@Component({
  selector: 'app-mp',
  templateUrl: './mp.component.html',
  styleUrls: ['./mp.component.css']
})
export class MpComponent implements OnInit {
  createArticleForm!: FormGroup;
  createdArticles: any[] = [];
  filteredArticles: any[] = [];
  userDetails: any = {};
  searchTerm: string = '';
  isModalOpen = false;
  selectedArticle: any = null;
  editMode: boolean = false;
  editArticleId: number | null = null;
  originalImageUrl: string | null = null; // Store the original image URL
  uploadedImageId: number | null = null; // Store the uploaded image ID
  selectedFile: File | null = null;
  isCreateArticleModalOpen = false;

  constructor(
    private fb: FormBuilder,
    private apiService: ApiService,
    private router: Router,
    public authService: AuthService // Use 'public' modifier here
  ) {}

  ngOnInit(): void {
    const uniqueId = this.authService.getUniqueId();
    if (!uniqueId) {
      console.error('Unique ID is null');
      // Handle the case where uniqueId is null, e.g., redirect to login
      this.router.navigate(['/login']);
      return;
    }

    this.createArticleForm = this.fb.group({
      title: ['', Validators.required],
      summary: ['', Validators.required],
      profile_image_url: ['', Validators.required],
      author_unique_id: [uniqueId, Validators.required]
    });

    this.fetchUserDetails(uniqueId);
    this.fetchArticles(uniqueId);
  }

  onSubmit() {
    if (this.createArticleForm.valid) {
      const articleData = this.createArticleForm.value;
      if (this.editMode && this.editArticleId !== null) {
        articleData.article_id = this.editArticleId;
        if (!articleData.profile_image_url) {
          articleData.profile_image_url = this.originalImageUrl; // Use the original image URL if not changed
        }
        if (this.uploadedImageId) {
          articleData.image_id = this.uploadedImageId; // Include the image ID if available
        }
        console.log('Submitting article data for update:', articleData); // Log the form data
        this.apiService.editArticle(articleData).subscribe(
          response => {
            console.log('Article updated successfully:', response.message);
            this.fetchArticles(this.authService.getUniqueId()!);
            this.resetForm();
          },
          error => {
            console.error('Article update failed:', error);
            alert('Article update failed: ' + (error.error?.error || error.message));
          }
        );
      } else {
        console.log('Submitting article data for creation:', articleData); // Log the form data
        this.apiService.createArticle(articleData).subscribe(
          response => {
            console.log('Article created successfully:', response.message);
            this.createdArticles.push(articleData);
            this.resetForm();
          },
          error => {
            console.error('Article creation failed:', error);
            alert('Article creation failed: ' + (error.error?.error || error.message));
          }
        );
      }
    }
  }

  onFileSelected(event: any) {
    const file: File = event.target.files[0];
    if (file) {
      const formData: FormData = new FormData();
      formData.append('file', file, file.name);

      this.apiService.uploadImage(formData).subscribe(
        (response: any) => {
          console.log('Image uploaded successfully:', response);
          this.uploadedImageId = response.image_id; // Store the uploaded image ID
          this.createArticleForm.patchValue({ profile_image_url: response.url }); // Use the URL from the response
        },
        (error) => {
          console.error('Image upload failed:', error);
          alert('Image upload failed: ' + (error.error?.error || error.message));
        }
      );
    }
  }

  fetchArticles(uniqueId: string) {
    this.apiService.getArticlesByAuthor(uniqueId).subscribe(
      (response: any) => {
        this.createdArticles = response.articles;
        this.filteredArticles = this.createdArticles;
      },
      (error) => {
        console.error('Failed to fetch articles:', error);
      }
    );
  }

  fetchUserDetails(uniqueId: string) {
    this.apiService.getUserDetails(uniqueId).subscribe(
      (response: any) => {
        this.userDetails = response.user;
      },
      (error) => {
        console.error('Failed to fetch user details:', error);
      }
    );
  }

  filterArticles(): void {
    this.filteredArticles = this.createdArticles.filter(article =>
      article.title.toLowerCase().includes(this.searchTerm.toLowerCase())
    );
  }

  isLoggedIn(): boolean {
    return this.authService.isLoggedIn();
  }

  logout(): void {
    this.authService.logout();
    this.router.navigate(['/login']);
  }

  openModal(article: any) {
    this.selectedArticle = article;
    this.isModalOpen = true;
  }

  closeModal() {
    this.isModalOpen = false;
    this.selectedArticle = null;
  }

  deleteArticle(articleId: number) {
    const uniqueId = this.authService.getUniqueId();
    if (!uniqueId) {
      console.error('Unique ID is null');
      return;
    }
    this.apiService.deleteArticle(articleId, uniqueId).subscribe(
      response => {
        console.log('Article deleted successfully:', response.message);
        this.fetchArticles(uniqueId);
      },
      error => {
        console.error('Article deletion failed:', error);
        alert('Article deletion failed: ' + (error.error?.error || error.message));
      }
    );
  }

  editArticle(article: any) {
    this.editMode = true;
    this.editArticleId = article.id;
    this.originalImageUrl = article.profile_image_url; // Store the original image URL
    this.uploadedImageId = article.image_id; // Store the uploaded image ID
    this.createArticleForm.patchValue({
      title: article.title,
      summary: article.summary,
      profile_image_url: article.profile_image_url,
      author_unique_id: article.author_unique_id
    });
    this.openCreateArticleModal();
  }

  resetForm() {
    const uniqueId = this.authService.getUniqueId();
    if (!uniqueId) {
      console.error('Unique ID is null');
      return;
    }
    this.createArticleForm.reset();
    this.createArticleForm.patchValue({ author_unique_id: uniqueId });
    this.editMode = false;
    this.editArticleId = null;
    this.originalImageUrl = null; // Reset the original image URL
    this.uploadedImageId = null; // Reset the uploaded image ID
  }

  updateArticle() {
    const data = {
      article_id: this.editArticleId,
      title: this.createArticleForm.value.title,
      summary: this.createArticleForm.value.summary,
      profile_image_url: this.createArticleForm.value.profile_image_url,
      author_unique_id: this.createArticleForm.value.author_unique_id,
      image_id: this.uploadedImageId
    };

    console.log('Updating article with data:', data); // Log the data

    this.apiService.editArticle(data).subscribe(
      (response: any) => {
        console.log('Article updated successfully:', response);
      },
      (error: any) => {
        console.error('Article update failed:', error);
      }
    );
  }

  navigateToBlogForms() {
    this.router.navigate(['/blog-form']);
  }

  openCreateArticleModal() {
    this.isCreateArticleModalOpen = true;
  }

  closeCreateArticleModal() {
    this.isCreateArticleModalOpen = false;
  }
}