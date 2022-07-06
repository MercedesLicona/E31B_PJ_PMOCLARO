import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegistroBBVAComponent } from './registro-bbva.component';

describe('RegistroBBVAComponent', () => {
  let component: RegistroBBVAComponent;
  let fixture: ComponentFixture<RegistroBBVAComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RegistroBBVAComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RegistroBBVAComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
