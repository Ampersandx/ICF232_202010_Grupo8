import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { InfoProductoPageRoutingModule } from './info-producto-routing.module';

import { InfoProductoPage } from './info-producto.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    InfoProductoPageRoutingModule
  ],
  declarations: [InfoProductoPage]
})
export class InfoProductoPageModule {}
