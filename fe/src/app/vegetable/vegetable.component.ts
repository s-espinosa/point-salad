import { Component, Input } from '@angular/core';
import { Vegetable } from '../vegetable';

@Component({
  selector: 'ps-vegetable',
  standalone: true,
  imports: [],
  templateUrl: './vegetable.component.html',
  styleUrl: './vegetable.component.scss'
})
export class VegetableComponent {
  @Input() vegetable!: Vegetable;

  selectVegetable(): void {
    console.log(this.vegetable.name)
  }
}
