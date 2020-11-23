import { Component, OnInit } from '@angular/core';
import { ModalController } from '@ionic/angular';

@Component({
  selector: 'app-info-producto',
  templateUrl: './info-producto.page.html',
  styleUrls: ['./info-producto.page.scss'],
})
export class InfoProductoPage implements OnInit {


  constructor(private modalCtrl: ModalController) { }

  ngOnInit() {
  }

  dismiss() {
    this.modalCtrl.dismiss({
      'dismissed': true
    });
    
  }

}
