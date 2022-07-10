import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { ConsultasService } from 'src/app/services/consultas.service';
import { ProyectosService } from 'src/app/services/proyectos.service';

@Component({
  selector: 'app-bbva',
  templateUrl: './bbva.component.html',
  styleUrls: ['./bbva.component.css']
})
export class BbvaComponent implements OnInit {
  dtOptions: DataTables.Settings={};
  sub_menu: any;
  servicioList: any[] = [];
  clienteList: any[] = [];
  tipoServicioList: any[] = [];
  proyectoList: any[] = [];
  sedeList: any[] = [];

  formularioRegistro = this.fb.group({
    idTipoServicio: ['', [Validators.required]],
    idAnalista: ['', [Validators.required]],//
    idCliente: ['002', [Validators.required]],
    idSede: ['', [Validators.required]],
    idProyecto: ['', [Validators.required]],
  })
  constructor(private readonly enrutador: Router,
    private fb:FormBuilder,
    private readonly proyectoServicio:ProyectosService,
    private readonly consultaServicio:ConsultasService) { }


    cargarListado(cliente:string){
      this.proyectoServicio.__getServiciosPorProyecto(cliente).subscribe((rest:any)=>{
        if(rest.issuccess){
          this.servicioList=rest.data;
         // console.log(rest.data);
        }
      })
     }
  
     cargarConsultas() {
      this.consultaServicio.__getEntidades(1).subscribe((rest: any) => {
        if (rest.issuccess) {
          this.clienteList = rest.data;
        }
      });
  
      this.consultaServicio.__getEntidades(0).subscribe((rest: any) => {
        if (rest.issuccess) {
          this.tipoServicioList = rest.data;
        }
      });
  
      this.consultaServicio.__getEntidades(2).subscribe((rest: any) => {
        if (rest.issuccess) {
          this.sedeList = rest.data;
        }
      });
  
      this.consultaServicio.__getEntidades(3).subscribe((rest: any) => {
        if (rest.issuccess) {
          this.proyectoList = rest.data;
        }
      });
    }
  
    //1 Crear un metodo para guaradar.
    guaradarSolicitud() {
      //1.1 Crear formulario con los atributos que pide el API
      //1.2 Relacionar en el HTML los controles con el formulario creado.  
      //1.3 Obtener el ID del usuario en sesión.
      let token = sessionStorage.getItem('token');
      if (token != null) {
        let usuario = JSON.parse(token);
        //1.4 Asignar el ID del analista
        this.formularioRegistro.get('idCliente')?.enable();
        this.formularioRegistro.patchValue({
          idAnalista: usuario.idTrabajador
        });
        //1.5 Validar si el formulario tien datos. :   console.log(this.formularioRegistro.valid);
        //console.log(this.formularioRegistro.value);
        if (this.formularioRegistro.valid) {
          //2 invocar al API para guardar datos.
          this.proyectoServicio.__registrarServicio(this.formularioRegistro.value).subscribe((rest: any) => {
            if(rest.issuccess){
              window.location.href = "/BBVA";
            }

            //console.log(rest);
          })
        }

        this.formularioRegistro.get('idCliente')?.disable();
      }
    }
  
    ngOnInit(): void {
      this.dtOptions = {
        pagingType: 'full_numbers'
      };
      this.cargarListado("BBVA");
      this.cargarConsultas();
      this.formularioRegistro.get('idCliente')?.disable();
    }
  }