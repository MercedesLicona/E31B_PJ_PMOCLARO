import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SatelitalComponent } from './satelital.component';

describe('SatelitalComponent', () => {
  let component: SatelitalComponent;
  let fixture: ComponentFixture<SatelitalComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SatelitalComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SatelitalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
