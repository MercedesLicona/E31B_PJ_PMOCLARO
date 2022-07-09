import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-bcp',
  templateUrl: './bcp.component.html',
  styleUrls: ['./bcp.component.css']
})
export class BcpComponent implements OnInit {
  sub_menu: any;
  isSgaShown: boolean = true;
  isSotShown: boolean = false;

  constructor(private readonly enrutador: Router) {

   }
   irBCP(){
    this.enrutador.navigate(["bcp"])
   }

  
   showSga(){
    this.isSgaShown = true;
    this.isSotShown = false;
   }
   showSot(){
    this.isSotShown = true;
    this.isSgaShown = false;
   }
  //  tabPanel(flag: boolean){
  //   if(flag){
  //     this.tabSga = true;
  //     this.tabSot = false;
  //     console.log(flag);
  //   }else{
  //     this.tabSga = false;
  //     this.tabSot = true;
  //     console.log(flag);
  //   }  
  //  }


  ngOnInit(): void {

 
 


  }

}
