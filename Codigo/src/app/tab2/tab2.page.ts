import { Component, OnInit } from '@angular/core';
import { InfoProductoPage } from '../info-producto/info-producto.page';
import { ModalController } from '@ionic/angular';
import { IonRouterOutlet } from '@ionic/angular';

@Component({
  selector: 'app-tab2',
  templateUrl: 'tab2.page.html',
  styleUrls: ['tab2.page.scss']
})
export class Tab2Page implements OnInit{
  tabStore: string;
  constructor(public modalController: ModalController, private routerOutlet: IonRouterOutlet) {
  
  }

  ngOnInit() {
    this.tabStore = 'oferta';
  }

  segmentChanged(ev: any) {
    console.log('Segment changed', ev);
  }

  async presentModal() {
    const modal = await this.modalController.create({
      component: InfoProductoPage,
      cssClass: 'my-custom-class',
      swipeToClose: true,
      presentingElement: this.routerOutlet.nativeEl
    });
    return await modal.present();
  }

}
