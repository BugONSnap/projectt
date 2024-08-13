import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  private apiUrl = 'http://localhost/api-blog'; // Ensure this URL is correct
  private registerUrl = `${this.apiUrl}/register`;
  private postCommentUrl = `${this.apiUrl}/post_comment`;
  private createArticleUrl = `${this.apiUrl}/create_article`;
  private getArticlesUrl = `${this.apiUrl}/articles`;
  private getArticlesByAuthorUrl = `${this.apiUrl}/articles_by_author`; // Add the URL for fetching articles by author
  private getUserDetailsUrl = `${this.apiUrl}/user_details`;
  private uploadImageUrl = `${this.apiUrl}/upload_image`; // Ensure this URL is correct
  private deleteArticleUrl = `${this.apiUrl}/delete_article`; // Add the URL for deleting articles
  private editArticleUrl = `${this.apiUrl}/edit_article`; // Add the URL for editing articles
  private getArticlesWithUserUrl = `${this.apiUrl}/articles_with_user`; // Add the URL for fetching articles with user details
  private likeArticleUrl = `${this.apiUrl}/like_article`; // Add the URL for liking articles
  private dislikeArticleUrl = `${this.apiUrl}/dislike_article`; // Add the URL for disliking articles
  private addCommentUrl = `${this.apiUrl}/add_comment`; // Add the URL for adding comments

  constructor(private http: HttpClient, private authService: AuthService) {}

  login(data: { username: string; password: string }): Observable<any> {
    return this.http.post(`${this.apiUrl}/login`, data).pipe(
      tap((response: any) => {
        if (response && response.user) {
          this.authService.saveToken(response.token);
          this.authService.saveUniqueId(response.user.unique_id);
        }
      }),
      catchError(this.handleError)
    );
  }

  register(data: any): Observable<any> {
    return this.http.post<any>(this.registerUrl, data).pipe(
      catchError(this.handleError)
    );
  }

  postComment(data: any): Observable<any> {
    return this.http.post<any>(this.postCommentUrl, data).pipe(
      catchError(this.handleError)
    );
  }

  createArticle(data: any): Observable<any> {
    return this.http.post<any>(this.createArticleUrl, data).pipe(
      catchError(this.handleError)
    );
  }

  getArticles(): Observable<any> {
    return this.http.get<any>(this.getArticlesUrl).pipe(
      catchError(this.handleError)
    );
  }

  getArticlesByAuthor(uniqueId: string): Observable<any> {
    return this.http.post<any>(this.getArticlesByAuthorUrl, { unique_id: uniqueId }).pipe(
      catchError(this.handleError)
    );
  }

  getUserDetails(uniqueId: string): Observable<any> {
    return this.http.post<any>(this.getUserDetailsUrl, { unique_id: uniqueId }).pipe(
      catchError(this.handleError)
    );
  }

  uploadImage(data: FormData): Observable<any> {
    return this.http.post<any>(this.uploadImageUrl, data).pipe(
      catchError(this.handleError)
    );
  }

  deleteArticle(articleId: number, userId: string): Observable<any> {
    return this.http.post<any>(this.deleteArticleUrl, { article_id: articleId, author_unique_id: userId }).pipe(
      catchError(this.handleError)
    );
  }

  editArticle(data: any): Observable<any> {
    const formData: FormData = new FormData();
    formData.append('article_id', data.article_id);
    formData.append('title', data.title);
    formData.append('summary', data.summary);
    formData.append('profile_image_url', data.profile_image_url);

    return this.http.post<any>(this.editArticleUrl, formData).pipe(
      catchError(this.handleError)
    );
  }

  getArticlesWithUser(): Observable<any> {
    return this.http.get<any>(this.getArticlesWithUserUrl).pipe(
      catchError(this.handleError)
    );
  }

  likeArticle(articleId: number, userId: string): Observable<any> {
    return this.http.post<any>(this.likeArticleUrl, { article_id: articleId, user_id: userId }).pipe(
      catchError(this.handleError)
    );
  }

  dislikeArticle(articleId: number, userId: string): Observable<any> {
    return this.http.post<any>(this.dislikeArticleUrl, { article_id: articleId, user_id: userId }).pipe(
      catchError(this.handleError)
    );
  }

  addComment(articleId: number, comment: string, userId: string): Observable<any> {
    return this.http.post<any>(this.addCommentUrl, { article_id: articleId, user_id: userId, comment }).pipe(
      tap(response => console.log('Add comment response:', response)), // Log the response
      catchError(this.handleError)
    );
  }

  getImage(filename: string): string {
    return `${this.apiUrl}/uploads/${filename}`;
  }

  private handleError(error: HttpErrorResponse) {
    let errorMessage = 'An unknown error occurred!';
    if (error.error instanceof ErrorEvent) {
      // A client-side or network error occurred.
      errorMessage = `An error occurred: ${error.error.message}`;
    } else {
      // The backend returned an unsuccessful response code.
      if (error.status === 401) {
        errorMessage = error.error.error; // Use the error message from the backend
      } else {
        errorMessage = `Server returned code: ${error.status}, error message is: ${error.message}`;
        if (error.error) {
          errorMessage += `, server error message: ${error.error}`;
        }
      }
    }
    return throwError(errorMessage);
  }
}