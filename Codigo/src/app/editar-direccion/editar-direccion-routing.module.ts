import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { EditarDireccionPage } from './editar-direccion.page';

const routes: Routes = [
  {
    path: '',
    component: EditarDireccionPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class EditarDireccionPageRoutingModule {}
