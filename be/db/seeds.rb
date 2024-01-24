#### CREATE VEGETABLES #####
puts "Creating Vegetables"

lettuce = Vegetable.find_or_create_by(name: 'lettuce') do |vegetable|
  vegetable.color = 'green-600'
  vegetable.png = '/assets/lettuce.png'
end

onion = Vegetable.find_or_create_by(name: 'onion') do |vegetable|
  vegetable.color = 'pink-700'
  vegetable.png = '/assets/onion.png'
end

cabbage = Vegetable.find_or_create_by(name: 'cabbage') do |vegetable|
  vegetable.color = 'fuchsia-800'
  vegetable.png = '/assets/cabbage.png'
end

pepper = Vegetable.find_or_create_by(name: 'pepper') do |vegetable|
  vegetable.color = 'yellow-400'
  vegetable.png = '/assets/pepper.png'
end

carrot = Vegetable.find_or_create_by(name: 'carrot') do |vegetable|
  vegetable.color = 'orange-500'
  vegetable.png = '/assets/carrot.png'
end

tomato = Vegetable.find_or_create_by(name: 'tomato') do |vegetable|
  vegetable.color = 'red-700'
  vegetable.png = '/assets/tomato.png'
end

vegetables = [
  :cabbage,
  :carrot,
  :lettuce,
  :onion,
  :pepper,
  :tomato
]

#### CREATE SCORING CONDITIONS #####
puts "Creating ScoringConditions"

negative_one_set_of_one = vegetables.each do |vegetable|
  ScoringCondition
    .find_or_create_by(
      points: -1,
      scoring_method: 'set',
      required_vegetables: [vegetable].to_json
    )
end

negative_two_set_of_one = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: -2,
    scoring_method: 'set',
    required_vegetables: [vegetable].to_json
  )
end

negative_four_set_of_one = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: -4,
    scoring_method: 'set',
    required_vegetables: [vegetable].to_json
  )
end

positive_one_set_of_one = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 1,
    scoring_method: 'set',
    required_vegetables: [vegetable].to_json
  )
end

positive_two_set_of_one = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 2,
    scoring_method: 'set',
    required_vegetables: [vegetable].to_json
  )
end

positive_three_set_of_one = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 3,
    scoring_method: 'set',
    required_vegetables: [vegetable].to_json
  )
end

positive_four_set_of_one = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 4,
    scoring_method: 'set',
    required_vegetables: [vegetable].to_json
  )
end

pairs = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 5,
    scoring_method: 'pair',
    required_vegetables: [vegetable].to_json
  )
end

threes = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 8,
    scoring_method: 'three',
    required_vegetables: [vegetable].to_json
  )
end

odd_total = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 3,
    scoring_method: 'oddTotal',
    required_vegetables: [vegetable].to_json
  )
end

even_total = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 7,
    scoring_method: 'evenTotal',
    required_vegetables: [vegetable].to_json
  )
end

most = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 10,
    scoring_method: 'most',
    required_vegetables: [vegetable].to_json
  )
end

fewest = vegetables.each do |vegetable|
  ScoringCondition.find_or_create_by(
    points: 7,
    scoring_method: 'fewest',
    required_vegetables: [vegetable].to_json
  )
end

sets_of_two = [
  [:cabbage, :lettuce].to_json,
  [:cabbage, :onion].to_json,
  [:cabbage, :pepper].to_json,
  [:cabbage, :tomato].to_json,
  [:carrot, :lettuce].to_json,
  [:carrot, :onion].to_json,
  [:carrot, :pepper].to_json,
  [:carrot, :tomato].to_json,
  [:lettuce, :onion].to_json,
  [:onion, :pepper].to_json,
  [:tomato, :lettuce].to_json,
  [:tomato, :pepper].to_json,
]

sets_of_two.each do |set|
  ScoringCondition.find_or_create_by(
    points: 5,
    scoring_method: 'set',
    required_vegetables: set
  )
end

sets_of_three = [
  [:cabbage, :carrot, :tomato].to_json,
  [:cabbage, :tomato, :lettuce].to_json,
  [:carrot, :cabbage, :onion].to_json,
  [:carrot, :onion, :pepper].to_json,
  [:lettuce, :carrot, :onion].to_json,
  [:lettuce, :pepper, :carrot].to_json,
  [:onion, :pepper, :cabbage].to_json,
  [:onion, :tomato, :pepper].to_json,
  [:pepper, :cabbage, :tomato].to_json,
  [:pepper, :lettuce, :cabbage].to_json,
  [:tomato, :lettuce, :carrot].to_json,
  [:tomato, :onion, :lettuce].to_json,
]

sets_of_three.each do |set|
  ScoringCondition.find_or_create_by(
    points: 8,
    scoring_method: 'set',
    required_vegetables: set
  )
end

full_set = ScoringCondition.find_or_create_by(points: 12, scoring_method: 'set', required_vegetables: vegetables.to_json)
missing = ScoringCondition.find_or_create_by(points: 5, scoring_method: 'missing', required_vegetables: vegetables.to_json)
at_least_two = ScoringCondition.find_or_create_by(points: 3, scoring_method: 'atLeastTwo', required_vegetables: vegetables.to_json)
at_least_three = ScoringCondition.find_or_create_by(points: 5, scoring_method: 'atLeastThree', required_vegetables: vegetables.to_json)
most_total = ScoringCondition.find_or_create_by(points: 10, scoring_method: 'mostTotal', required_vegetables: vegetables.to_json)
fewest_total = ScoringCondition.find_or_create_by(points: 7, scoring_method: 'fewestTotal', required_vegetables: vegetables.to_json)


#### CREATE SCORING CARDS #####
puts "Creating Scoring Cards"

# 2/onion
# tomato

ScoringCard.find_or_create_by(scoring_description: '2/onion') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['onion'].to_json)
  ]
end

# 2/cabbage
# carrot

ScoringCard.find_or_create_by(scoring_description: '2/cabbage') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['carrot'].to_json)
  ]
end

# 2/lettuce
# pepper

ScoringCard.find_or_create_by(scoring_description: '2/lettuce') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['lettuce'].to_json)
  ]
end


# 2/pepper
# lettuce

ScoringCard.find_or_create_by(scoring_description: '2/pepper') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['pepper'].to_json)
  ]
end

# 2/carrot
# cabbage

ScoringCard.find_or_create_by(scoring_description: '2/carrot') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['carrot'].to_json)
  ]
end

# 2/tomato
# onion

ScoringCard.find_or_create_by(scoring_description: '2/tomato') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['tomato'].to_json)
  ]
end

# 1/onion
# 1/cabbage
# tomato

ScoringCard.find_or_create_by(scoring_description: '1/onion, 1/cabbage') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['cabbage'].to_json)
  ]
end

# 1/onion
# 1/carrot
# tomato

ScoringCard.find_or_create_by(scoring_description: '1/onion, 1/carrot') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['carrot'].to_json)
  ]
end

# 1/cabbage
# 1/lettuce
# carrot

ScoringCard.find_or_create_by(scoring_description: '1/cabbage, 1/lettuce') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['lettuce'].to_json)
  ]
end

# 1/cabbage
# 1/pepper
# carrot

ScoringCard.find_or_create_by(scoring_description: '1/cabbage, 1/pepper') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['pepper'].to_json)
  ]
end

# 1/lettuce
# 1/tomato
# pepper

ScoringCard.find_or_create_by(scoring_description: '1/lettuce, 1/tomato') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['tomato'].to_json)
  ]
end

# 1/lettuce
# 1/onion
# pepper

ScoringCard.find_or_create_by(scoring_description: '1/lettuce, 1/onion') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['onion'].to_json)
  ]
end

# 1/pepper
# 1/tomato
# lettuce

ScoringCard.find_or_create_by(scoring_description: '1/pepper, 1/tomato') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['tomato'].to_json)
  ]
end

# 1/pepper
# 1/onion
# lettuce

ScoringCard.find_or_create_by(scoring_description: '1/pepper, 1/onion') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['onion'].to_json)
  ]
end

# 1/carrot
# 1/lettuce
# cabbage

ScoringCard.find_or_create_by(scoring_description: '1/carrot, 1/lettuce') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['lettuce'].to_json)
  ]
end

# 1/carrot
# 1/pepper
# cabbage

ScoringCard.find_or_create_by(scoring_description: '1/carrot, 1/pepper') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['pepper'].to_json)
  ]
end

# 1/tomato
# 1/carrot
# onion

ScoringCard.find_or_create_by(scoring_description: '1/tomato, 1/carrot') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['carrot'].to_json)
  ]
end

# 1/tomato
# 1/cabbage
# onion

ScoringCard.find_or_create_by(scoring_description: '1/tomato, 1/cabbage') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['cabbage'].to_json)
  ]
end

# 3/onion
# -2/pepper
# tomato

ScoringCard.find_or_create_by(scoring_description: '3/onion, -2/pepper') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['pepper'].to_json)
  ]
end

# 3/cabbage
# -2/tomato
# carrot

ScoringCard.find_or_create_by(scoring_description: '3/cabbage, -2/tomato') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['tomato'].to_json)
  ]
end

# 3/lettuce
# -2/carrot
# pepper

ScoringCard.find_or_create_by(scoring_description: '3/lettuce, -2/carrot') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['carrot'].to_json)
  ]
end

# 3/pepper
# -2/cabbage
# lettuce

ScoringCard.find_or_create_by(scoring_description: '3/pepper, -2/cabbage') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['cabbage'].to_json)
  ]
end

# 3/carrot
# -2/onion
# cabbage

ScoringCard.find_or_create_by(scoring_description: '3/carrot, -2/onion') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['onion'].to_json)
  ]
end

# 3/tomato
# -2/lettuce
# onion

ScoringCard.find_or_create_by(scoring_description: '3/tomato, -2/lettuce') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['lettuce'].to_json)
  ]
end

# 2/onion
# 1/cabbage
# -2/tomato
# tomato

ScoringCard.find_or_create_by(scoring_description: '2/onion, 1/cabbage, -2/tomato') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['tomato'].to_json)
  ]
end

# 2/onion
# 2/pepper
# -4/cabbage
# tomato

ScoringCard.find_or_create_by(scoring_description: '2/onion, 2/pepper, -4/cabbage') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: -4, scoring_method: 'set', required_vegetables: ['cabbage'].to_json)
  ]
end

# 2/cabbage
# 1/lettuce
# -2/carrot
# carrot

ScoringCard.find_or_create_by(scoring_description: '2/cabbage, 1/lettuce, -2/carrot') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['carrot'].to_json)
  ]
end

# 2/cabbage
# 2/tomato
# -4/lettuce
# carrot

ScoringCard.find_or_create_by(scoring_description: '2/cabbage, 2/tomato, -4/lettuce') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: -4, scoring_method: 'set', required_vegetables: ['lettuce'].to_json)
  ]
end

# 1/lettuce
# 1/onion
# -2/pepper
# pepper

ScoringCard.find_or_create_by(scoring_description: '1/lettuce, 1/onion, -2/pepper') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['pepper'].to_json)
  ]
end

# 2/lettuce
# 2/carrot
# -4/onion
# pepper

ScoringCard.find_or_create_by(scoring_description: '2/lettuce, 2/carrot, -4/onion') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: -4, scoring_method: 'set', required_vegetables: ['onion'].to_json)
  ]
end

# 2/pepper
# 1/tomato
# -2/lettuce
# lettuce

ScoringCard.find_or_create_by(scoring_description: '2/pepper, 1/tomato, -2/lettuce') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['lettuce'].to_json)
  ]
end

# 2/pepper
# 2/cabbage
# -4/tomato
# lettuce

ScoringCard.find_or_create_by(scoring_description: '2/pepper, 2/cabbage, -4/tomato') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: -4, scoring_method: 'set', required_vegetables: ['tomato'].to_json)
  ]
end

# 2/carrot
# 1/pepper
# -2/cabbage
# cabbage

ScoringCard.find_or_create_by(scoring_description: '2/carrot, 1/pepper, -2/cabbage') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['cabbage'].to_json)
  ]
end

# 2/carrot
# 2/onion
# -4/pepper
# cabbage

ScoringCard.find_or_create_by(scoring_description: '2/carrot, 2/onion, -4/pepper') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: -4, scoring_method: 'set', required_vegetables: ['pepper'].to_json)
  ]
end

# 2/tomato
# 1/carrot
# -2/onion
# onion

ScoringCard.find_or_create_by(scoring_description: '2/tomato, 1/carrot, -2/onion') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: 1, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['onion'].to_json)
  ]
end

# 2/tomato
# 2/lettuce
# -4/carrot
# onion

ScoringCard.find_or_create_by(scoring_description: '2/tomato, 2/lettuce, -4/carrot') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: 2, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: -4, scoring_method: 'set', required_vegetables: ['carrot'].to_json)
  ]
end






# 3/onion
# -1/cabbage
# -1/tomato
# tomato

ScoringCard.find_or_create_by(scoring_description: '3/onion, -1/cabbage, -1/tomato') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['tomato'].to_json)
  ]
end

# 4/onion
# -2/carrot
# -2/lettuce
# tomato

ScoringCard.find_or_create_by(scoring_description: '4/onion, -2/carrot, -2/lettuce') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 4, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['lettuce'].to_json)
  ]
end

# 3/cabbage
# -1/lettuce
# -1/carrot
# carrot

ScoringCard.find_or_create_by(scoring_description: '3/cabbage, -1/lettuce, -1/carrot') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['carrot'].to_json)
  ]
end

# 4/cabbage
# -2/pepper
# -2/onion
# carrot

ScoringCard.find_or_create_by(scoring_description: '4/cabbage, -2/pepper, -2/onion') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 4, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['onion'].to_json)
  ]
end

# 3/lettuce
# -1/onion
# -1/pepper
# pepper

ScoringCard.find_or_create_by(scoring_description: '3/lettuce, -1/onion, -1/pepper') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['pepper'].to_json)
  ]
end

# 4/lettuce
# -2/tomato
# -2/cabbage
# pepper

ScoringCard.find_or_create_by(scoring_description: '4/lettuce, -2/tomato, -2/cabbage') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 4, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['cabbage'].to_json)
  ]
end

# 3/pepper
# -1/tomato
# -1/lettuce
# lettuce

ScoringCard.find_or_create_by(scoring_description: '3/pepper, -1/tomato, -1/lettuce') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['lettuce'].to_json)
  ]
end

# 4/pepper
# -2/onion
# -2/carrot
# lettuce

ScoringCard.find_or_create_by(scoring_description: '4/pepper, -2/onion, -2/carrot') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 4, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['carrot'].to_json)
  ]
end

# 3/carrot
# -1/pepper
# -1/cabbage
# cabbage

ScoringCard.find_or_create_by(scoring_description: '3/carrot, -1/pepper, -1/cabbage') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['cabbage'].to_json)
  ]
end

# 4/carrot
# -2/lettuce
# -2/tomato
# cabbage

ScoringCard.find_or_create_by(scoring_description: '4/carrot, -2/lettuce, -2/tomato') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 4, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['tomato'].to_json)
  ]
end

# 3/tomato
# -1/carrot
# -1/onion
# onion

ScoringCard.find_or_create_by(scoring_description: '3/tomato, -1/carrot, -1/onion') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: -1, scoring_method: 'set', required_vegetables: ['onion'].to_json)
  ]
end

# 4/tomato
# -2/cabbage
# -2/pepper
# onion

ScoringCard.find_or_create_by(scoring_description: '4/tomato, -2/cabbage, -2/pepper') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 4, scoring_method: 'set', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: -2, scoring_method: 'set', required_vegetables: ['pepper'].to_json)
  ]
end

# Pair

# 5/pair onion
# tomato

ScoringCard.find_or_create_by(scoring_description: '5/pair onion') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'pair', required_vegetables: ['onion'].to_json)
  ]
end

# 5/pair cabbage
# carrot

ScoringCard.find_or_create_by(scoring_description: '5/pair cabbage') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'pair', required_vegetables: ['cabbage'].to_json)
  ]
end

# 5/pair lettuce
# pepper

ScoringCard.find_or_create_by(scoring_description: '5/pair lettuce') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'pair', required_vegetables: ['lettuce'].to_json)
  ]
end

# 5/pair pepper
# lettuce

ScoringCard.find_or_create_by(scoring_description: '5/pair pepper') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'pair', required_vegetables: ['pepper'].to_json)
  ]
end

# 5/pair tomato
# onion

ScoringCard.find_or_create_by(scoring_description: '5/pair tomato') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'pair', required_vegetables: ['tomato'].to_json)
  ]
end

# 5/pair carrot
# cabbage

ScoringCard.find_or_create_by(scoring_description: '5/pair carrot') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'pair', required_vegetables: ['carrot'].to_json)
  ]
end


# Three of a Kind

# 8/three onion
# tomato

ScoringCard.find_or_create_by(scoring_description: '8/three onion') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'three', required_vegetables: ['onion'].to_json)
  ]
end

# 8/three cabbage
# carrot

ScoringCard.find_or_create_by(scoring_description: '8/three cabbage') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'three', required_vegetables: ['cabbage'].to_json)
  ]
end

# 8/three lettuce
# pepper

ScoringCard.find_or_create_by(scoring_description: '8/three lettuce') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'three', required_vegetables: ['lettuce'].to_json)
  ]
end

# 8/three pepper
# lettuce

ScoringCard.find_or_create_by(scoring_description: '8/three pepper') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'three', required_vegetables: ['pepper'].to_json)
  ]
end

# 8/three tomato
# onion

ScoringCard.find_or_create_by(scoring_description: '8/three tomato') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'three', required_vegetables: ['tomato'].to_json)
  ]
end

# 8/three carrot
# cabbage

ScoringCard.find_or_create_by(scoring_description: '8/three carrot') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'three', required_vegetables: ['carrot'].to_json)
  ]
end


# Sets of two

# 5/cabbage and pepper
# tomato

ScoringCard.find_or_create_by(scoring_description: '5/cabbage, pepper') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['cabbage', 'pepper'].to_json)
  ]
end

# 5/carrot and lettuce
# tomato

ScoringCard.find_or_create_by(scoring_description: '5/carrot, lettuce') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['carrot', 'lettuce'].to_json)
  ]
end

# 5/onion and pepper
# carrot

ScoringCard.find_or_create_by(scoring_description: '5/onion, pepper') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['onion', 'pepper'].to_json)
  ]
end

# 5/tomato and lettuce
# carrot

ScoringCard.find_or_create_by(scoring_description: '5/tomato, lettuce') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['tomato', 'lettuce'].to_json)
  ]
end

# 5/carrot and onion
# pepper

ScoringCard.find_or_create_by(scoring_description: '5/carrot, onion') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['carrot', 'onion'].to_json)
  ]
end

# 5/cabbage and tomato
# pepper

ScoringCard.find_or_create_by(scoring_description: '5/cabbage, tomato') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['cabbage', 'tomato'].to_json)
  ]
end

# 5/carrot and tomato
# lettuce

ScoringCard.find_or_create_by(scoring_description: '5/carrot, tomato') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['carrot', 'tomato'].to_json)
  ]
end

# 5/cabbage and onion
# lettuce

ScoringCard.find_or_create_by(scoring_description: '5/cabbage, onion') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['cabbage', 'onion'].to_json)
  ]
end

# 5/lettuce and onion
# cabbage

ScoringCard.find_or_create_by(scoring_description: '5/lettuce, onion') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['lettuce', 'onion'].to_json)
  ]
end

# 5/tomato and pepper
# cabbage

ScoringCard.find_or_create_by(scoring_description: '5/tomato, pepper') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['tomato', 'pepper'].to_json)
  ]
end

# 5/carrot and pepper
# onion

ScoringCard.find_or_create_by(scoring_description: '5/carrot, pepper') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['carrot', 'pepper'].to_json)
  ]
end

# 5/cabbage and lettuce
# onion

ScoringCard.find_or_create_by(scoring_description: '5/cabbage, lettuce') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'set', required_vegetables: ['cabbage', 'lettuce'].to_json)
  ]
end


# Sets of three

# 8/tomato onion and lettuce
# tomato

ScoringCard.find_or_create_by(scoring_description: '8/tomato, onion, lettuce') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['tomato', 'onion', 'lettuce'].to_json)
  ]
end

# 8/carrot onion and pepper
# tomato

ScoringCard.find_or_create_by(scoring_description: '8/carrot, onion, pepper') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['carrot', 'onion', 'pepper'].to_json)
  ]
end

# 8/pepper cabbage and tomato
# carrot

ScoringCard.find_or_create_by(scoring_description: '8/pepper, cabbage, tomato') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['pepper', 'cabbage', 'tomato'].to_json)
  ]
end

# 8/carrot cabbage and onion
# carrot

ScoringCard.find_or_create_by(scoring_description: '8/carrot, cabbage, onion') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['carrot', 'cabbage', 'onion'].to_json)
  ]
end

# 8/tomato lettuce and carrot
# pepper

ScoringCard.find_or_create_by(scoring_description: '8/tomato, lettuce, carrot') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['tomato', 'lettuce', 'carrot'].to_json)
  ]
end

# 8/pepper lettuce and cabbage
# pepper

ScoringCard.find_or_create_by(scoring_description: '8/pepper, lettuce, cabbage') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['pepper', 'lettuce', 'cabbage'].to_json)
  ]
end

# 8/onion pepper and cabbage
# lettuce

ScoringCard.find_or_create_by(scoring_description: '8/onion, pepper, cabbage') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['onion', 'pepper', 'cabbage'].to_json)
  ]
end

# 8/lettuce pepper and carrot
# lettuce

ScoringCard.find_or_create_by(scoring_description: '8/lettuce, pepper, carrot') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['lettuce', 'pepper', 'carrot'].to_json)
  ]
end

# 8/cabbage carrot and tomato
# cabbage

ScoringCard.find_or_create_by(scoring_description: '8/cabbage, carrot, tomato') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['cabbage', 'carrot', 'tomato'].to_json)
  ]
end

# 8/lettuce carrot and onion
# cabbage

ScoringCard.find_or_create_by(scoring_description: '8/lettuce, carrot, onion') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['lettuce', 'carrot', 'onion'].to_json)
  ]
end

# 8/cabbage tomato and lettuce
# onion

ScoringCard.find_or_create_by(scoring_description: '8/cabbage, tomato, lettuce') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['cabbage', 'tomato', 'lettuce'].to_json)
  ]
end

# 8/onion tomato and pepper
# onion

ScoringCard.find_or_create_by(scoring_description: '8/onion, tomato, pepper') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 8, scoring_method: 'set', required_vegetables: ['onion', 'tomato', 'pepper'].to_json)
  ]
end

# Full Set

# 12/tomato lettuce carrot onion pepper and cabbage
# tomato

ScoringCard.find_or_create_by(scoring_description: '12/tomato, lettuce, carrot, onion, pepper, cabbage') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 12, scoring_method: 'set', required_vegetables: ['cabbage','carrot', 'lettuce', 'onion', 'pepper', 'tomato'].to_json)
  ]
end

# At least two

# 3/vegetable with at least 2
# onion

ScoringCard.find_or_create_by(scoring_description: '3/vegetable with at least 2') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 3, scoring_method: 'atLeastTwo', required_vegetables: ['cabbage','carrot', 'lettuce', 'onion', 'pepper', 'tomato'].to_json)
  ]
end

# At least three

# 5/vegetable type with at least 3
# carrot

ScoringCard.find_or_create_by(scoring_description: '5/vegetable type with at least 3') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'atLeastThree', required_vegetables: ['cabbage','carrot', 'lettuce', 'onion', 'pepper', 'tomato'].to_json)
  ]
end


# Missing type

# 5/missing vegetable type
# cabbage

ScoringCard.find_or_create_by(scoring_description: '5/missing vegetable type') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 5, scoring_method: 'missing', required_vegetables: ['cabbage','carrot', 'lettuce', 'onion', 'pepper', 'tomato'].to_json)
  ]
end


# Evens and Odds

# 7/even total onion
# 3/odd total onion
# tomato

ScoringCard.find_or_create_by(scoring_description: '7/even and 3/odd total onion') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'evenTotal', required_vegetables: ['onion'].to_json),
    ScoringCondition.find_by(points: 3, scoring_method: 'oddTotal', required_vegetables: ['onion'].to_json)
  ]
end

# 7/even total cabbage
# 3/odd total cabbage
# carrot

ScoringCard.find_or_create_by(scoring_description: '7/even and 3/odd total cabbage') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'evenTotal', required_vegetables: ['cabbage'].to_json),
    ScoringCondition.find_by(points: 3, scoring_method: 'oddTotal', required_vegetables: ['cabbage'].to_json)
  ]
end

# 7/even total lettuce
# 3/odd total lettuce
# pepper

ScoringCard.find_or_create_by(scoring_description: '7/even and 3/odd total lettuce') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'evenTotal', required_vegetables: ['lettuce'].to_json),
    ScoringCondition.find_by(points: 3, scoring_method: 'oddTotal', required_vegetables: ['lettuce'].to_json)
  ]
end

# 7/even total pepper
# 3/odd total pepper
# lettuce

ScoringCard.find_or_create_by(scoring_description: '7/even and 3/odd total pepper') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'evenTotal', required_vegetables: ['pepper'].to_json),
    ScoringCondition.find_by(points: 3, scoring_method: 'oddTotal', required_vegetables: ['pepper'].to_json)
  ]
end

# 7/even total carrot
# 3/odd total carrot
# cabbage

ScoringCard.find_or_create_by(scoring_description: '7/even and 3/odd total carrot') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'evenTotal', required_vegetables: ['carrot'].to_json),
    ScoringCondition.find_by(points: 3, scoring_method: 'oddTotal', required_vegetables: ['carrot'].to_json)
  ]
end

# 7/even total tomato
# 3/odd total tomato
# onion

ScoringCard.find_or_create_by(scoring_description: '7/even and 3/odd total tomato') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'evenTotal', required_vegetables: ['tomato'].to_json),
    ScoringCondition.find_by(points: 3, scoring_method: 'oddTotal', required_vegetables: ['tomato'].to_json)
  ]
end


# Fewest

# 7/fewest onions
# tomato

ScoringCard.find_or_create_by(scoring_description: '7/fewest onions') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'fewest', required_vegetables: ['onion'].to_json)
  ]
end

# 7/fewest cabbage
# carrot

ScoringCard.find_or_create_by(scoring_description: '7/fewest cabbage') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'fewest', required_vegetables: ['cabbage'].to_json)
  ]
end

# 7/fewest lettuce
# pepper

ScoringCard.find_or_create_by(scoring_description: '7/fewest lettuce') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'fewest', required_vegetables: ['lettuce'].to_json)
  ]
end

# 7/fewest pepper
# lettuce

ScoringCard.find_or_create_by(scoring_description: '7/fewest pepper') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'fewest', required_vegetables: ['pepper'].to_json)
  ]
end

# 7/fewest carrot
# cabbage

ScoringCard.find_or_create_by(scoring_description: '7/fewest carrot') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'fewest', required_vegetables: ['carrot'].to_json)
  ]
end

# 7/fewest tomato
# onion

ScoringCard.find_or_create_by(scoring_description: '7/fewest tomato') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'fewest', required_vegetables: ['tomato'].to_json)
  ]
end

# 7/fewest total vegetables
# lettuce

ScoringCard.find_or_create_by(scoring_description: '7/fewest total vegetables') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 7, scoring_method: 'fewestTotal', required_vegetables: ['cabbage','carrot', 'lettuce', 'onion', 'pepper', 'tomato'].to_json)
  ]
end


# Most

# 10/most onions
# tomato

ScoringCard.find_or_create_by(scoring_description: '10/most onions') do |card|
  card.vegetable = tomato
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 10, scoring_method: 'most', required_vegetables: ['onion'].to_json)
  ]
end

# 10/most cabbage
# carrot

ScoringCard.find_or_create_by(scoring_description: '10/most cabbage') do |card|
  card.vegetable = carrot
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 10, scoring_method: 'most', required_vegetables: ['cabbage'].to_json)
  ]
end

# 10/most lettuce
# pepper

ScoringCard.find_or_create_by(scoring_description: '10/most lettuce') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 10, scoring_method: 'most', required_vegetables: ['lettuce'].to_json)
  ]
end

# 10/most pepper
# lettuce

ScoringCard.find_or_create_by(scoring_description: '10/most pepper') do |card|
  card.vegetable = lettuce
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 10, scoring_method: 'most', required_vegetables: ['pepper'].to_json)
  ]
end

# 10/most carrot
# cabbage

ScoringCard.find_or_create_by(scoring_description: '10/most carrot') do |card|
  card.vegetable = cabbage
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 10, scoring_method: 'most', required_vegetables: ['carrot'].to_json)
  ]
end

# 10/most tomato
# onion

ScoringCard.find_or_create_by(scoring_description: '10/most tomato') do |card|
  card.vegetable = onion
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 10, scoring_method: 'most', required_vegetables: ['tomato'].to_json)
  ]
end

# 10/most total vegetables
# pepper

ScoringCard.find_or_create_by(scoring_description: '10/most total vegetables') do |card|
  card.vegetable = pepper
  card.scoring_conditions = [
    ScoringCondition.find_by(points: 10, scoring_method: 'mostTotal', required_vegetables: ['cabbage','carrot', 'lettuce', 'onion', 'pepper', 'tomato'].to_json)
  ]
end
