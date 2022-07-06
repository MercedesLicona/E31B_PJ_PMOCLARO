import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FactibilidadComponent } from './factibilidad.component';

describe('FactibilidadComponent', () => {
  let component: FactibilidadComponent;
  let fixture: ComponentFixture<FactibilidadComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FactibilidadComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(FactibilidadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
