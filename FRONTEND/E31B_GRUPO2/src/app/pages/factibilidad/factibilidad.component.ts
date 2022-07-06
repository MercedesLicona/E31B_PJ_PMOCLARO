import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';



@Component({
  selector: 'app-factibilidad',
  templateUrl: './factibilidad.component.html',
  styleUrls: ['./factibilidad.component.css']
})
export class FactibilidadComponent implements OnInit {
  sub_menu: any;
  constructor(private readonly enrutador:Router) {
    // se ejecuta primero  
   }

   irAnodosDeLaRed(){
    this.enrutador.navigate(["nodosred"]);        
   }  

   irLTE(){
    this.enrutador.navigate(["lte"]);
   }

   irPEXT(){
    this.enrutador.navigate(["pext"]);
   }

  irPOP(){
    this.enrutador.navigate(["pop"]);
  }

  irSATELITAL(){
    this.enrutador.navigate(["satelital"]);
  }

   cambiarImagenes(n:number){
    this.sub_menu=n //1:planta, 2:equipamento, 3: cobertura

   }


  ngOnInit(): void {
    
  }
}
