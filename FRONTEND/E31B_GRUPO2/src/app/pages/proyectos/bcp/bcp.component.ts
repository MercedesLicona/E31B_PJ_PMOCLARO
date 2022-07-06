import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-bcp',
  templateUrl: './bcp.component.html',
  styleUrls: ['./bcp.component.css']
})
export class BcpComponent implements OnInit {
  sub_menu: any;

  constructor(private readonly enrutador: Router) {

   }
   irBCP(){
    this.enrutador.navigate(["bcp"])
   }

  

  ngOnInit(): void {
  }

}
