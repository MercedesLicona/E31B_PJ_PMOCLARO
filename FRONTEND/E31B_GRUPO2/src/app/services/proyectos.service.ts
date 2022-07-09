import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ProyectosService {

  constructor(private readonly http: HttpClient) { }

  __getServiciosPorProyecto(proyecto:string){
    return this.http.get<any>('http://localhost:5000/api/Servicio/ObtenerServicios?proyecto='+proyecto);
  }
  
  __registrarServicio(data:any){
    return this.http.post<any>('http://localhost:5000/api/Servicio/Registrar',data);
  }
}

