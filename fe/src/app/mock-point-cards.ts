import { PointCard } from "./point-card";

export const POINTCARDS: PointCard[] = [
    {
        scoringDescription: '2/Onion',
        scoringConditions: [
            {
                points: 2,
                requiredVegetable: 'onion',
                type: 'pointsPer'
            }
        ],
        vegetable: {
            color: 'red-700',
            name: 'tomato',
            png: '/assets/tomato.png'
        }
    },
    {
        scoringDescription: '2/Cabbage',
        scoringConditions: [
            {
                points: 2,
                requiredVegetable: 'cabbage',
                type: 'pointsPer'
            }
        ],
        vegetable: {
            color: 'orange-500',
            name: 'carrot',
            png: '/assets/carrot.png'
        }
    },
    {
        scoringDescription: '2/Lettuce',
        scoringConditions: [
            {
                points: 2,
                requiredVegetable: 'lettuce',
                type: 'pointsPer'
            }
        ],
        vegetable: {
            color: 'yellow-400',
            name: 'pepper',
            png: '/assets/pepper.png'
        }
    },
    {
        scoringDescription: '2/Pepper',
        scoringConditions: [
            {
                points: 2,
                requiredVegetable: 'pepper',
                type: 'pointsPer'
            }
        ],
        vegetable: {
            color: 'green-600',
            name: 'lettuce',
            png: '/assets/lettuce.png'
        }
    },
    {
        scoringDescription: '2/Carrot',
        scoringConditions: [
            {
                points: 2,
                requiredVegetable: 'carrot',
                type: 'pointsPer'
            }
        ],
        vegetable: {
            color: 'fuchsia-800',
            name: 'cabbage',
            png: '/assets/cabbage.png'
        }
    },
    {
        scoringDescription: '2/Tomato',
        scoringConditions: [
            {
                points: 2,
                requiredVegetable: 'tomato',
                type: 'pointsPer'
            }
        ],
        vegetable: {
            color: 'pink-700',
            name: 'onion',
            png: '/assets/onion.png'
        }
    },
];