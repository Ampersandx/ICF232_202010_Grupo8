import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { EditarDatosPage } from './editar-datos.page';

describe('EditarDatosPage', () => {
  let component: EditarDatosPage;
  let fixture: ComponentFixture<EditarDatosPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EditarDatosPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(EditarDatosPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
