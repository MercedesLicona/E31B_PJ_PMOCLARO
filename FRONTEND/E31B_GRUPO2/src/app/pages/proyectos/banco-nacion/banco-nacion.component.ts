import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-banco-nacion',
  templateUrl: './banco-nacion.component.html',
  styleUrls: ['./banco-nacion.component.css']
})
export class BancoNacionComponent implements OnInit {
  sub_menu: any;
  isSgaShown: boolean = true;
  isSotShown: boolean = false;
  constructor() { }

  showSga(){
    this.isSgaShown = true;
    this.isSotShown = false;
   }
   showSot(){
    this.isSotShown = true;
    this.isSgaShown = false;
   }
   
  ngOnInit(): void {
  }

}
