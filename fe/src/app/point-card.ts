import { ScoringCondition } from "./scoring-condition";
import { Vegetable } from "./vegetable";

export interface PointCard {
  scoring_description: string;
  scoring_conditions: ScoringCondition[];
  vegetable: Vegetable;
}
