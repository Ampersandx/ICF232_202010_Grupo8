import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { LoginPageRoutingModule } from './login-routing.module';

import { LoginPage } from './login.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    LoginPageRoutingModule
  ],
  declarations: [LoginPage]
})
export class LoginPageModule {
  emailValue: string ="";
  passValue: string="";
  constructor(public navCtrl: IonicModule) {
  }
  login(){
    var email=this.emailValue;
    var pass=this.passValue;
    console.log(email);
    console.log(pass);
//Conectar con ajax, mysql
  }
}
