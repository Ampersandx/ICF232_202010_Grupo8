import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { DatosDespachoPageRoutingModule } from './datos-despacho-routing.module';

import { DatosDespachoPage } from './datos-despacho.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    DatosDespachoPageRoutingModule
  ],
  declarations: [DatosDespachoPage]
})
export class DatosDespachoPageModule {}
