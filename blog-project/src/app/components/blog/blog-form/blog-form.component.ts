import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../../services/api.service';

@Component({
  selector: 'app-blog-form',
  templateUrl: './blog-form.component.html',
  styleUrls: ['./blog-form.component.css']
})
export class BlogFormComponent implements OnInit {
  articles: any[] = [];

  constructor(private apiService: ApiService) {}

  ngOnInit(): void {
    this.fetchArticles();
  }

  fetchArticles(): void {
    this.apiService.getArticlesWithUser().subscribe(
      (response: any) => {
        this.articles = response.articles;
      },
      (error: any) => {
        console.error('Failed to fetch articles:', error);
      }
    );
  }


}