import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { CambiarCorreoPage } from './cambiar-correo.page';

describe('CambiarCorreoPage', () => {
  let component: CambiarCorreoPage;
  let fixture: ComponentFixture<CambiarCorreoPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CambiarCorreoPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(CambiarCorreoPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
