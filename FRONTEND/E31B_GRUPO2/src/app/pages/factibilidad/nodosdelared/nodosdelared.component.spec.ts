import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NodosdelaredComponent } from './nodosdelared.component';

describe('NodosdelaredComponent', () => {
  let component: NodosdelaredComponent;
  let fixture: ComponentFixture<NodosdelaredComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NodosdelaredComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NodosdelaredComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
