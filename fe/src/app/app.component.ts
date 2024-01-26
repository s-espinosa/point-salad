import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet } from '@angular/router';
import { VegetableComponent } from './vegetable/vegetable.component';
import { VegetablesComponent } from './vegetables/vegetables.component';
import { Vegetable } from './vegetable';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, RouterOutlet, VegetableComponent, VegetablesComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'point-salad';
  vegetables: Vegetable[] = [
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
  collectedVegetables: Vegetable[] = [];
  vegetableTypes = [
      'lettuce',
      'onion',
      'cabbage',
      'pepper',
      'carrot',
      'tomato',
  ]

  selectVegetable(vegetable: Vegetable) {
    let index = this.vegetables.indexOf(vegetable)
    this.vegetables.splice(index, 1)
    this.collectedVegetables.push(vegetable)
  }

  countCollected(vegetableName: string) {
    let count = 0;
    this.collectedVegetables.forEach((vegetable) => {
      if(vegetable.name === vegetableName) {
        count++
      }
    })
    return count
  }
}
