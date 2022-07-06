import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LteComponent } from './lte.component';

describe('LteComponent', () => {
  let component: LteComponent;
  let fixture: ComponentFixture<LteComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LteComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(LteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
