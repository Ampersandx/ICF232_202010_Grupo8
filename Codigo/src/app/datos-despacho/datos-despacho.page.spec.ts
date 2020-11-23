import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { DatosDespachoPage } from './datos-despacho.page';

describe('DatosDespachoPage', () => {
  let component: DatosDespachoPage;
  let fixture: ComponentFixture<DatosDespachoPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DatosDespachoPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(DatosDespachoPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
