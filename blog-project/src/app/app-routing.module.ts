import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { BlogFormComponent } from './components/blog/blog-form/blog-form.component';
import { BlogComponent } from './components/blog/blog/blog.component';
import { LoginComponent } from './components/auth/login/login.component';
import { RegisterComponent } from './components/auth/register/register.component';
import { MpComponent } from './components/auth/mp/mp.component';
import { CommentsComponent } from './components/comments/comments.component';
import { securityAuthGuard } from './guards/security-auth.guard';
import { ArticlesComponent } from './components/articles/articles.component';

const routes: Routes = [
  { path: '', redirectTo: '/mp', pathMatch: 'full' },
  { path: 'mp', component: MpComponent },
  { path: 'blog', component: BlogComponent },
  { path: 'blog-form', component: BlogFormComponent },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'comments', component: CommentsComponent },
  { path: 'articles', component: ArticlesComponent },
  { path: '**', redirectTo: '/mp' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }