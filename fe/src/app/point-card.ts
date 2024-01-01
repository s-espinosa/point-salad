import { ScoringCondition } from "./scoring-condition";
import { Veggie } from "./veggie";

export interface PointCard {
  scoringDescription: string;
  scoringConditions: ScoringCondition[];
  veggie: Veggie;
}
