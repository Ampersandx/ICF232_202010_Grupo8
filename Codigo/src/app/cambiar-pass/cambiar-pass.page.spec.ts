import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { CambiarPassPage } from './cambiar-pass.page';

describe('CambiarPassPage', () => {
  let component: CambiarPassPage;
  let fixture: ComponentFixture<CambiarPassPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CambiarPassPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(CambiarPassPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
