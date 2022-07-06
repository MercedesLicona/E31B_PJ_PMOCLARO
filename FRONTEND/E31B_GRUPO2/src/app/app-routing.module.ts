import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { ComercialComponent } from "./pages/comercial/comercial.component";
import { FactibilidadComponent } from "./pages/factibilidad/factibilidad.component";
import { HomeComponent } from "./pages/home/home.component";
import { LoginComponent } from "./pages/login/login.component";
import { ProyectosComponent } from "./pages/proyectos/proyectos.component";
import { NosotrosComponent } from"./pages/nosotros/nosotros.component";

import { NodosdelaredComponent } from"./pages/factibilidad/nodosdelared/nodosdelared.component";
import { PopComponent } from "./pages/factibilidad/pop/pop.component";
import { LteComponent } from "./pages/factibilidad/lte/lte.component";
import { PextComponent } from "./pages/factibilidad/pext/pext.component";
import { SatelitalComponent } from "./pages/factibilidad/satelital/satelital.component";
import { BcpComponent } from "./pages/proyectos/bcp/bcp.component";
import { BbvaComponent } from "./pages/proyectos/bbva/bbva.component";
import { BancoNacionComponent } from "./pages/proyectos/banco-nacion/banco-nacion.component";

import { DashboardComponent } from "./pages/dashboard/dashboard.component";
import { RegistroComponent } from "./pages/bcp/registro/registro.component";
import { SgaComponent } from "./pages/bcp/sga/sga.component";
import { SotComponent } from "./pages/bcp/sot/sot.component";
import { RegistroBBVAComponent } from "./pages/bbva/registro-bbva/registro-bbva.component";
import { SgaBbvaComponent } from "./pages/bbva/sga-bbva/sga-bbva.component";
import { SotBbvaComponent } from "./pages/bbva/sot-bbva/sot-bbva.component";
import { RegistroBnComponent } from "./pages/bancodelanacion/registro-bn/registro-bn.component";
import { SgaBnComponent } from "./pages/bancodelanacion/sga-bn/sga-bn.component";
import { SotBnComponent } from "./pages/bancodelanacion/sot-bn/sot-bn.component";


const routes: Routes = [
    { path: 'home', component: HomeComponent },
    { path: 'comercial', component: ComercialComponent },
    { path: 'factibilidad', component: FactibilidadComponent },
    { path: 'proyectos', component: ProyectosComponent },
    { path: 'nosotros', component: NosotrosComponent },
    { path: 'login', component: LoginComponent },
    
    { path: 'BancoNacion', component: BancoNacionComponent },
    { path: 'BBVA', component: BbvaComponent },
    { path: 'BCP', component: BcpComponent },
    { path: '', redirectTo: 'home', pathMatch: 'full' },


    { path: 'nodosred', component: NodosdelaredComponent },
    { path: "pop", component: PopComponent},
    { path: "lte" , component:LteComponent},
    { path: "pext" , component:PextComponent},
    { path: "satelital" , component:SatelitalComponent},

    {path: "registro" , component:RegistroComponent},
    {path: "sga" , component:SgaComponent},
    {path: "sot" , component:SotComponent},

    {path: "registroBBVA" , component:RegistroBBVAComponent},
    {path: "sgaBBVA" , component:SgaBbvaComponent},
    {path: "sotBBVA" , component:SotBbvaComponent},

    {path: "registroBN" , component:RegistroBnComponent},
    {path: "sgaBN" , component:SgaBnComponent},
    {path: "sotBN" , component:SotBnComponent},

    { path: "dashboard" , component:DashboardComponent}

];



@NgModule ({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
})

export class AppRoutingModule {}

