import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { EditarDireccionPage } from './editar-direccion.page';

describe('EditarDireccionPage', () => {
  let component: EditarDireccionPage;
  let fixture: ComponentFixture<EditarDireccionPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EditarDireccionPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(EditarDireccionPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
