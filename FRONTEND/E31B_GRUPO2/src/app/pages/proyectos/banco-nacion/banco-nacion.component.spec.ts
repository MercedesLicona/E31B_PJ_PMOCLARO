import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BancoNacionComponent } from './banco-nacion.component';

describe('BancoNacionComponent', () => {
  let component: BancoNacionComponent;
  let fixture: ComponentFixture<BancoNacionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BancoNacionComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(BancoNacionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
