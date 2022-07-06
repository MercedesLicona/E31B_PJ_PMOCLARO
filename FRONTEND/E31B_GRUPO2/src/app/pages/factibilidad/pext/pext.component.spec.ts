import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PextComponent } from './pext.component';

describe('PextComponent', () => {
  let component: PextComponent;
  let fixture: ComponentFixture<PextComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PextComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PextComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
