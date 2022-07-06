import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-nodosdelared',
  templateUrl: './nodosdelared.component.html',
  styleUrls: ['./nodosdelared.component.css']
})
export class NodosdelaredComponent implements OnInit {
  sub_menu: any;
  
  constructor() { }


  cambiarInformacion(n: number){
    this.sub_menu = n
  }

  ngOnInit(): void {
  }

}
