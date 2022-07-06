import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SotBbvaComponent } from './sot-bbva.component';

describe('SotBbvaComponent', () => {
  let component: SotBbvaComponent;
  let fixture: ComponentFixture<SotBbvaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SotBbvaComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SotBbvaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
