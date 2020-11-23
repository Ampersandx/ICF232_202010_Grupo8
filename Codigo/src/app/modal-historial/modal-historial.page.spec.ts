import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { ModalHistorialPage } from './modal-historial.page';

describe('ModalHistorialPage', () => {
  let component: ModalHistorialPage;
  let fixture: ComponentFixture<ModalHistorialPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ModalHistorialPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(ModalHistorialPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
