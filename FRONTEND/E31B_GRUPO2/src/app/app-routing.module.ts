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

];



@NgModule ({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
})

export class AppRoutingModule {}

