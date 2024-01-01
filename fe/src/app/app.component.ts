import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet } from '@angular/router';
import { VeggieComponent } from './veggie/veggie.component';
import { VeggiesComponent } from './veggies/veggies.component';
import { Veggie } from './veggie';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, RouterOutlet, VeggieComponent, VeggiesComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'point-salad';
  veggies: Veggie[] = [
    {
      color: 'bg-green-600',
      name: 'lettuce',
      png: '/assets/lettuce.png'
    },
    {
      color: 'bg-pink-700',
      name: 'onion',
      png: '/assets/onion.png'
    },
    {
      color: 'bg-fuchsia-800',
      name: 'cabbage',
      png: '/assets/cabbage.png'
    },
    {
      color: 'bg-yellow-400',
      name: 'pepper',
      png: '/assets/pepper.png'
    },
    {
      color: 'bg-orange-500',
      name: 'carrot',
      png: '/assets/carrot.png'
    },
    {
      color: 'bg-red-700',
      name: 'tomato',
      png: '/assets/tomato.png'
    },
  ]
  collectedVeggies: Veggie[] = [];
  veggieTypes = [
      'lettuce',
      'onion',
      'cabbage',
      'yellow pepper',
      'carrot',
      'tomato',
  ]

  selectVeggie(veggie: Veggie) {
    let index = this.veggies.indexOf(veggie)
    this.veggies.splice(index, 1)
    this.collectedVeggies.push(veggie)
  }

  countCollected(veggieName: string) {
    let count = 0;
    this.collectedVeggies.forEach((veggie) => {
      if(veggie.name === veggieName) {
        count++
      }
    })
    return count
  }
}
