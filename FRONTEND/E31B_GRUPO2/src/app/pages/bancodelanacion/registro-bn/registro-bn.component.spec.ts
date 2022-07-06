import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegistroBnComponent } from './registro-bn.component';

describe('RegistroBnComponent', () => {
  let component: RegistroBnComponent;
  let fixture: ComponentFixture<RegistroBnComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RegistroBnComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RegistroBnComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
