import { Component, Input } from '@angular/core';
import { Veggie } from '../veggie';

@Component({
  selector: 'ps-veggie',
  standalone: true,
  imports: [],
  templateUrl: './veggie.component.html',
  styleUrl: './veggie.component.scss'
})
export class VeggieComponent {
  @Input() veggie!: Veggie;

  selectVeggie(): void {
    console.log(this.veggie.name)
  }
}
