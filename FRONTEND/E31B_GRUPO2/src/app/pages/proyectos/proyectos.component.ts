import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { ConsultasService } from 'src/app/services/consultas.service';
import { ProyectosService } from 'src/app/services/proyectos.service';

@Component({
  selector: 'app-proyectos',
  templateUrl: './proyectos.component.html',
  styleUrls: ['./proyectos.component.css']
})
export class ProyectosComponent implements OnInit {

  constructor(private fb:FormBuilder,
    private readonly proyectoServicio:ProyectosService,
    private readonly consultaServicio: ConsultasService) { }

  ngOnInit(): void {
  }




}
