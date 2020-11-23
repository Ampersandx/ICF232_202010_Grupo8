import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ModalCotizacionPageRoutingModule } from './modal-cotizacion-routing.module';

import { ModalCotizacionPage } from './modal-cotizacion.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ModalCotizacionPageRoutingModule
  ],
  declarations: [ModalCotizacionPage]
})
export class ModalCotizacionPageModule {}
