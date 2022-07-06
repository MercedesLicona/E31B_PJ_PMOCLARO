import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SgaBnComponent } from './sga-bn.component';

describe('SgaBnComponent', () => {
  let component: SgaBnComponent;
  let fixture: ComponentFixture<SgaBnComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SgaBnComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SgaBnComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
