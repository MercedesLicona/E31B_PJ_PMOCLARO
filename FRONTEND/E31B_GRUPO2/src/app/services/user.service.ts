import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private readonly http: HttpClient) { }

__getLogin(data:any){
  return this.http.post<any[]>('https://localhost:5001/api/Trabajador/GetLogin',data);
}

}
 