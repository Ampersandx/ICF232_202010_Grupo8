import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { EstadoCotizacionPage } from './estado-cotizacion.page';

const routes: Routes = [
  {
    path: '',
    component: EstadoCotizacionPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class EstadoCotizacionPageRoutingModule {}
