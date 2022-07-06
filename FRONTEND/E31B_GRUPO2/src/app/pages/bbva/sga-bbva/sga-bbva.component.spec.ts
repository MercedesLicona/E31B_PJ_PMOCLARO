import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SgaBbvaComponent } from './sga-bbva.component';

describe('SgaBbvaComponent', () => {
  let component: SgaBbvaComponent;
  let fixture: ComponentFixture<SgaBbvaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SgaBbvaComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SgaBbvaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
