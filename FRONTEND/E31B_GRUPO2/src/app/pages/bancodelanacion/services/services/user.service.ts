import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private readonly http: HttpClient) { }

  // ApiLogin(user: string, password: string){
  //   this.http.get<any>('https://localhost:44387/api/Trabajador/GetLogin?email='+user+'&contrasena='+password);
  // }
  apiLogin(data: any[]){
    this.http.post<any>('https://localhost:44387/api/Trabajador/GetLogin',data);
  }
}
