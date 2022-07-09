import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { Router } from '@angular/router';
import { ConsultasService } from 'src/app/services/consultas.service';
import { ProyectosService } from 'src/app/services/proyectos.service';

@Component({
  selector: 'app-bbva',
  templateUrl: './bbva.component.html',
  styleUrls: ['./bbva.component.css']
})
export class BbvaComponent implements OnInit {
  sub_menu: any;
  servicioList: any[] = [];
  constructor(private readonly enrutador: Router,
    private fb:FormBuilder,
    private readonly proyectoServicio:ProyectosService,
    private readonly consultaServicio:ConsultasService) { }


    cargarListado(){
      this.proyectoServicio.__getServiciosPorProyecto("BBVA").subscribe((rest:any)=>{
        if(rest.issuccess){
          this.servicioList=rest.data;
          console.log(rest.data);
        }
      })
     }
  
  
    ngOnInit(): void {
      this.cargarListado();
    }
  }
  