import { Injectable } from '@angular/core';
import { PointCard } from './point-card';
import { POINTCARDS } from './mock-point-cards';

@Injectable({
  providedIn: 'root'
})
export class PointCardService {
  constructor() { }

  getPointCards(): PointCard[] {
    return POINTCARDS;
  }
}
