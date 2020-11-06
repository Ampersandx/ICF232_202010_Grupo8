import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { InfoProductoPage } from './info-producto.page';

describe('InfoProductoPage', () => {
  let component: InfoProductoPage;
  let fixture: ComponentFixture<InfoProductoPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ InfoProductoPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(InfoProductoPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
