import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { EstadoCotizacionPageRoutingModule } from './estado-cotizacion-routing.module';

import { EstadoCotizacionPage } from './estado-cotizacion.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    EstadoCotizacionPageRoutingModule
  ],
  declarations: [EstadoCotizacionPage]
})
export class EstadoCotizacionPageModule {}
