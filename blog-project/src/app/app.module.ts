import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { AppComponent } from './app.component';
import { BlogFormComponent } from './components/blog/blog-form/blog-form.component';
import { BlogComponent } from './components/blog/blog/blog.component';
import { CommentsComponent } from './components/comments/comments.component';
import { AuthComponent } from './components/auth/auth.component';
import { LoginComponent } from './components/auth/login/login.component';
import { RegisterComponent } from './components/auth/register/register.component';
import { MpComponent } from './components/auth/mp/mp.component';
import { AppRoutingModule } from './app-routing.module';
import { HeaderComponent } from './components/header/header.component';
import { ArticlesComponent } from './components/articles/articles.component';

@NgModule({
  declarations: [
    AppComponent,
    CommentsComponent,
    AuthComponent,
    LoginComponent,
    RegisterComponent,
    BlogFormComponent,
    BlogComponent,
    MpComponent,
    HeaderComponent,
    ArticlesComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    AppRoutingModule
  ],
  schemas: [CUSTOM_ELEMENTS_SCHEMA],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }