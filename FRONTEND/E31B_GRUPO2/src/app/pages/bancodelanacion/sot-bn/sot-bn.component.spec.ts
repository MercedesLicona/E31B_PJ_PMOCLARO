import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SotBnComponent } from './sot-bn.component';

describe('SotBnComponent', () => {
  let component: SotBnComponent;
  let fixture: ComponentFixture<SotBnComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SotBnComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SotBnComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
