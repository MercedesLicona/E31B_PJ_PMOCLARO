import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BbvaComponent } from './bbva.component';

describe('BbvaComponent', () => {
  let component: BbvaComponent;
  let fixture: ComponentFixture<BbvaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BbvaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(BbvaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
