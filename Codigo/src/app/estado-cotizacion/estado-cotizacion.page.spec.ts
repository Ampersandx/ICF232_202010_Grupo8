import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { EstadoCotizacionPage } from './estado-cotizacion.page';

describe('EstadoCotizacionPage', () => {
  let component: EstadoCotizacionPage;
  let fixture: ComponentFixture<EstadoCotizacionPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EstadoCotizacionPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(EstadoCotizacionPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
