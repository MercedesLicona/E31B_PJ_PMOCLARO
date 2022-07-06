import { ThisReceiver } from '@angular/compiler';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  sub_menu: any;
  constructor(private readonly enrutador:Router) { 

  }

  irAsgaBCP(){
    this.enrutador.navigate(["sga"])
  }

  irAsotBCP(){
    this.enrutador.navigate(["sot"])
  }

  irAregistroBCP(){
    this.enrutador.navigate(["registro"])
  }


 irAregistroBBVA(){
    this.enrutador.navigate(["registroBBVA"])
 }

 irAsotBBVA(){
  this.enrutador.navigate(["sotBBVA"])
 }

 irAsgaBBVA(){
  this.enrutador.navigate(["sgaBBVA"])
 }

 irAregistroBN(){
  this.enrutador.navigate(["registroBN"])
 }

 irAsgaBN(){
  this.enrutador.navigate(["sgaBN"])
 }

 irAsotBN(){
  this.enrutador.navigate(["sotBN"])
 }

irAfactibilidad(){
  this.enrutador.navigate(["factibilidad"]);
}



  ngOnInit(): void {
  }

}
