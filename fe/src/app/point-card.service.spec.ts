import { TestBed } from '@angular/core/testing';

import { PointCardService } from './point-card.service';

describe('PointCardService', () => {
  let service: PointCardService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(PointCardService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
