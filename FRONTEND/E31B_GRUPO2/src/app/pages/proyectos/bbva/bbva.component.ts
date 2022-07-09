import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-bbva',
  templateUrl: './bbva.component.html',
  styleUrls: ['./bbva.component.css']
})
export class BbvaComponent implements OnInit {
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
