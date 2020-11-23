import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ModalCotizacionPage } from './modal-cotizacion.page';

const routes: Routes = [
  {
    path: '',
    component: ModalCotizacionPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ModalCotizacionPageRoutingModule {}
