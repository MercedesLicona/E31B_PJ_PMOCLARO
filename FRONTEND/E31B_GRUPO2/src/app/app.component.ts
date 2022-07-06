import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent  implements OnInit{
  title = 'E31B';
  sub_menu: any;
  estaEnSesion=false;

  constructor(private readonly enrutador:Router){
  }

  irBCP(){
    this.enrutador.navigate(["BCP"])
  }
  cerrarSesion(){
    sessionStorage.removeItem('token');
    window.location.href="/home";
  }

  ngOnInit(): void{
    let token = sessionStorage.getItem('token');
    if(token!=null){
      this.estaEnSesion=true;
    }else{
      this.estaEnSesion=false;
    }
  }
}
