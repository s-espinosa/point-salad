#### CREATE VEGGIES #####
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

# sets = ScoringCondition.includes(:required_vegetables).where(scoring_method: 'set')

# ScoringCondition.create(points: -1, scoring_method: 'set', required_vegetables: [cabbage])

negative_one_set_of_one = vegetables.each do |vegetable|
  ScoringCondition
    .find_or_create_by(
      points: -1,
      scoring_method: 'set',
      required_vegetables: [vegetable].to_json
    )
end

# negative_two_set_of_one = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: -2,
#     scoring_method: 'set',
#     required_veggies: [veggie]
#   )
# end

# negative_four_set_of_one = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: -4,
#     scoring_method: 'set',
#     required_veggies: [veggie]
#   )
# end

# positive_one_set_of_one = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 1,
#     scoring_method: 'set',
#     required_veggies: [veggie]
#   )
# end

# positive_two_set_of_one = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 2,
#     scoring_method: 'set',
#     required_veggies: [veggie]
#   )
# end

# positive_three_set_of_one = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 3,
#     scoring_method: 'set',
#     required_veggies: [veggie]
#   )
# end

# positive_four_set_of_one = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 4,
#     scoring_method: 'set',
#     required_veggies: [veggie]
#   )
# end

# pairs = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 5,
#     scoring_method: 'pair',
#     required_veggies: [veggie]
#   )
# end

# threes = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 8,
#     scoring_method: 'three',
#     required_veggies: [veggie]
#   )
# end

# odd_total = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 3,
#     scoring_method: 'odd_total',
#     required_veggies: [veggie]
#   )
# end

# even_total = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 7,
#     scoring_method: 'even_total',
#     required_veggies: [veggie]
#   )
# end

# most = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 10,
#     scoring_method: 'most',
#     required_veggies: [veggie]
#   )
# end

# fewest = veggies.each do |veggie|
#   ScoringCondition.find_or_create_by(
#     points: 7,
#     scoring_method: 'fewest',
#     required_veggies: [veggie]
#   )
# end

# sets_of_two = [
#   [cabbage, lettuce],
#   [cabbage, onion],
#   [cabbage, pepper],
#   [cabbage, tomato],
#   [carrot, lettuce],
#   [carrot, onion],
#   [carrot, pepper],
#   [carrot, tomato],
#   [lettuce, onion],
#   [onion, pepper],
#   [tomato, lettuce],
#   [tomato, pepper],
# ]

# sets_of_two.each do |set|
#   ScoringCondition.find_or_create_by(
#     points: 5,
#     scoring_method: 'set',
#     required_veggies: set
#   )
# end

# sets_of_three = [
#   [cabbage, carrot, tomato],
#   [cabbage, tomato, lettuce],
#   [carrot, cabbage, onion],
#   [carrot, onion, pepper],
#   [lettuce, carrot, onion],
#   [lettuce, pepper, carrot],
#   [onion, pepper, cabbage],
#   [onion, tomato, pepper],
#   [pepper, cabbage, tomato],
#   [pepper, lettuce, cabbage],
#   [tomato, lettuce, carrot],
#   [tomato, onion, lettuce]
# ]

# sets_of_three.each do |set|
#   ScoringCondition.find_or_create_by(
#     points: 8,
#     scoring_method: 'set',
#     required_veggies: set
#   )
# end

# full_set = ScoringCondition.find_or_create_by(points: 12, scoring_method: 'set', required_veggies: veggies)
# missing = ScoringCondition.find_or_create_by(points: 5, scoring_method: 'missing', required_veggies: veggies)
# at_least_two = ScoringCondition.find_or_create_by(points: 3, scoring_method: 'atLeastTwo', required_veggies: veggies)
# at_least_three = ScoringCondition.find_or_create_by(points: 5, scoring_method: 'atLeastThree', required_veggies: veggies)
# most_total = ScoringCondition.find_or_create_by(points: 10, scoring_method: 'mostTotal', required_veggies: veggies)
# fewest_total = ScoringCondition.find_or_create_by(points: 7, scoring_method: 'fewestTotal', required_veggies: veggies)


#### CREATE SCORING CARDS #####

# 2/onion
# tomato

# 2/cabbage
# carrot

# 2/lettuce
# pepper

# 2/pepper
# lettuce

# 2/carrot
# cabbage

# 2/tomato
# onion

# 1/onion
# 1/cabbage
# tomato

# 1/onion
# 1/carrot
# tomato

# 3/onion
# -2/pepper
# tomato

# 1/cabbage
# 1/lettuce
# carrot

# 1/cabbage
# 1/pepper
# carrot

# 3/cabbage
# -2/tomato
# carrot

# 1/lettuce
# 1/tomato
# pepper

# 1/lettuce
# 1/onion
# pepper

# 3/lettuce
# -2/carrot
# pepper

# 1/pepper
# 1/tomato
# lettuce

# 1/pepper
# 1/onion
# lettuce

# 3/pepper
# -2/cabbage
# lettuce

# 1/carrot
# 1/lettuce
# cabbage

# 1/carrot
# 1/pepper
# cabbage

# 3/carrot
# -2/onion
# cabbage

# 1/tomato
# 1/carrot
# onion

# 1/tomato
# 1/cabbage
# onion

# 3/tomato
# -2/lettuce
# onion

# 2/onion
# 1/cabbage
# -2/tomato
# tomato

# 2/onion
# 2/pepper
# -4/cabbage
# tomato

# 3/onion
# -1/cabbage
# -1/tomato
# tomato

# 4/onion
# -2/carrot
# -2/lettuce
# tomato

# 2/cabbage
# 1/lettuce
# -2/carrot
# carrot

# 2/cabbage
# 2/tomato
# -4/lettuce
# carrot

# 3/cabbage
# -1/lettuce
# -1/carrot
# carrot

# 4/cabbage
# -2/pepper
# -2/onion
# carrot

# 1/lettuce
# 1/onion
# -2/pepper
# pepper

# 2/lettuce
# 2/carrot
# -4/onion
# pepper

# 3/lettuce
# -1/onion
# -1/pepper
# pepper

# 4/lettuce
# -2/tomato
# -2/cabbage
# pepper

# 2/pepper
# 1/tomato
# -2/lettuce
# lettuce

# 2/pepper
# 2/cabbage
# -4/tomato
# lettuce

# 3/pepper
# -1/tomato
# -1/lettuce
# lettuce

# 4/pepper
# -2/onion
# -2/carrot
# lettuce

# 2/carrot
# 1/pepper
# -2/cabbage
# cabbage

# 2/carrot
# 2/onion
# -4/pepper
# cabbage

# 3/carrot
# -1/pepper
# -1/cabbage
# cabbage

# 4/carrot
# -2/lettuce
# -2/tomato
# cabbage

# 2/tomato
# 1/carrot
# -2/onion
# onion

# 2/tomato
# 2/lettuce
# -4/carrot
# onion

# 3/tomato
# -1/carrot
# -1/onion
# onion

# 4/tomato
# -2/cabbage
# -2/pepper
# onion

# 7/fewest onions
# tomato

# 10/most onions
# tomato

# 7/even total onion
# 3/odd total onion
# tomato

# 5/pair onions
# tomato

# 8/three onions
# tomato

# 5/cabbage and pepper
# tomato

# 5/carrot and lettuce
# tomato

# 8/tomato onion and lettuce
# tomato

# 8/carrot onion and pepper
# tomato

# 12/tomato lettuce carrot onion pepper and cabbage
# tomato

# 5/onion and pepper
# carrot

# 5/tomato and lettuce
# carrot

# 8/pepper cabbage and tomato
# carrot

# 8/carrot cabbage and onion
# carrot

# 5/pair cabbage
# carrot

# 8/three cabbage
# carrot

# 7/even total cabbage
# 3/odd total cabbage
# carrot

# 5/veggie type with at least 3
# carrot

# 7/fewest cabbage
# carrot

# 10/most cabbage
# carrot

# 5/carrot and onion
# pepper

# 5/cabbage and tomato
# pepper

# 8/tomato lettuce and carrot
# pepper

# 8/pepper lettuce and cabbage
# pepper

# 5/pair lettuce
# pepper

# 8/three lettuce
# pepper

# 7/even total lettuce
# 3/odd total lettuce
# pepper

# 7/fewest lettuce
# pepper

# 10/most lettuce
# pepper

# 10/most total veggies
# pepper

# 5/carrot and tomato
# lettuce

# 5/cabbage and onion
# lettuce

# 8/onion pepper and cabbage
# lettuce

# 8/lettuce pepper and carrot
# lettuce

# 5/pair pepper
# lettuce

# 8/three pepper
# lettuce

# 7/even total pepper
# 3/odd total pepper
# lettuce

# 7/fewest total veggies
# lettuce

# 7/fewest pepper
# lettuce

# 10/most pepper
# lettuce

# 5/lettuce and onion
# cabbage

# 5/tomato and pepper
# cabbage

# 8/cabbage carrot and tomato
# cabbage

# 8/lettuce carrot and onion
# cabbage

# 5/pair carrot
# cabbage

# 8/three carrot
# cabbage

# 7/even total carrot
# 3/odd total carrot
# cabbage

# 5/missing veggie type
# cabbage

# 7/fewest carrot
# cabbage

# 10/most carrot
# cabbage

# ONIONS
# 5/carrot and pepper
# onion

# 5/cabbage and lettuce
# onion

# 8/cabbage tomato and lettuce
# onion

# 8/onion tomato and pepper
# onion

# 5/pair tomato
# onion

# 8/three tomato
# onion

# 7/even total tomato
# 3/odd total tomato
# onion

# 3/veggie with at least 2
# onion

# 7/fewest tomato
# onion

# 10/most tomato
# onion
