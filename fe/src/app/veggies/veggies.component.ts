import { Component } from '@angular/core';
import { NgFor } from '@angular/common';
import { Veggie } from '../veggie';
import { VeggieComponent } from '../veggie/veggie.component';

@Component({
  selector: 'ps-veggies',
  standalone: true,
  imports: [NgFor, VeggieComponent],
  templateUrl: './veggies.component.html',
  styleUrl: './veggies.component.scss'
})
export class VeggiesComponent {
  veggies: Veggie[] = [
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
