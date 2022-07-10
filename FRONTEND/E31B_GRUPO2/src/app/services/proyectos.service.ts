import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ProyectosService {

  constructor(private readonly http: HttpClient) { }

  __getServiciosPorProyecto(data:any){
    return this.http.get<any>('https://localhost:5001/api/Servicio/ObtenerServiciosPorCliente?cliente='+data);
  }
  
  __registrarServicio(data:any){
    return this.http.post<any>('https://localhost:5001/api/Servicio/Registrar',data);
  }
}

