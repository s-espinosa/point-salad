import { ScoringCondition } from "./scoring-condition";
import { Vegetable } from "./vegetable";

export interface PointCard {
  scoringDescription: string;
  scoringConditions: ScoringCondition[];
  vegetable: Vegetable;
}
