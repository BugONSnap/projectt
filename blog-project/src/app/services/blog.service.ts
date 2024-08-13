import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class BlogService {
  private apiUrl = 'http://localhost/api-blog/articles'; // Update this URL if needed

  constructor(private http: HttpClient) {}

  getBlogs(): Observable<any> {
    return this.http.get<any>(this.apiUrl);
  }
}