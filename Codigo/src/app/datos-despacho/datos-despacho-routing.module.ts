import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { DatosDespachoPage } from './datos-despacho.page';

const routes: Routes = [
  {
    path: '',
    component: DatosDespachoPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class DatosDespachoPageRoutingModule {}
