import { Injectable } from '@angular/core';
import { PointCard } from './point-card';
import { POINTCARDS } from './mock-point-cards';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class PointCardService {
  constructor(private http: HttpClient) { }

  getPointCards(): PointCard[] {
    let response = this.http.get('http://127.0.0.1:3000/scoring_cards?soloable=true');
    response.subscribe(
      value => console.log(value)
    )

    return POINTCARDS;
  }
}
