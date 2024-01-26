import { Component } from '@angular/core';
import { NgFor } from '@angular/common';
import { Vegetable } from '../vegetable';
import { VegetableComponent } from '../vegetable/vegetable.component';

@Component({
  selector: 'ps-vegetables',
  standalone: true,
  imports: [NgFor, VegetableComponent],
  templateUrl: './vegetables.component.html',
  styleUrl: './vegetables.component.scss'
})
export class VegetablesComponent {
  vegetables: Vegetable[] = [
    {
      color: 'green-600',
      name: 'lettuce',
      png: '/assets/lettuce.png'
    },
    {
      color: 'pink-700',
      name: 'onion',
      png: '/assets/onion.png'
    },
    {
      color: 'fuchsia-800',
      name: 'cabbage',
      png: '/assets/cabbage.png'
    },
    {
      color: 'yellow-400',
      name: 'pepper',
      png: '/assets/pepper.png'
    },
    {
      color: 'orange-500',
      name: 'carrot',
      png: '/assets/carrot.png'
    },
    {
      color: 'red-700',
      name: 'tomato',
      png: '/assets/tomato.png'
    },
  ]
}
