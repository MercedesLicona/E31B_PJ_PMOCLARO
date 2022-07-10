import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { ReactiveFormsModule } from "@angular/forms";
import { DataTablesModule } from 'angular-datatables';

import { AppComponent } from './app.component';
import { HomeComponent } from './pages/home/home.component';
import { FactibilidadComponent } from './pages/factibilidad/factibilidad.component';
import { ComercialComponent } from './pages/comercial/comercial.component';
import { ProyectosComponent } from './pages/proyectos/proyectos.component';

import { AppRoutingModule } from './app-routing.module';
import { NosotrosComponent } from './pages/nosotros/nosotros.component';
import { LoginComponent } from './pages/login/login.component';

import { PopComponent } from './pages/factibilidad/pop/pop.component';
import { PextComponent } from './pages/factibilidad/pext/pext.component';
import { LteComponent } from './pages/factibilidad/lte/lte.component';
import { SatelitalComponent } from './pages/factibilidad/satelital/satelital.component';
import { BcpComponent } from './pages/proyectos/bcp/bcp.component';
import { BbvaComponent } from './pages/proyectos/bbva/bbva.component';
import { BancoNacionComponent } from './pages/proyectos/banco-nacion/banco-nacion.component';



@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    FactibilidadComponent,
    ComercialComponent,
    ProyectosComponent,
    LoginComponent,
    NosotrosComponent,
    PopComponent,
    PextComponent,
    LteComponent,
    SatelitalComponent,
    BcpComponent,
    BbvaComponent,
    BancoNacionComponent,
    
  ],

  imports: [
   BrowserModule,
   AppRoutingModule,
   ReactiveFormsModule,
   HttpClientModule,
   DataTablesModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
