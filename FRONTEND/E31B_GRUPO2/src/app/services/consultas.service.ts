import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ConsultasService {

  constructor(private readonly http: HttpClient) { }

  __getEntidades(opcion:number){
    return this.http.get<any>('https://localhost:5001/api/Consulta/ConsultaVarios?opcion='+opcion);
  }
}
