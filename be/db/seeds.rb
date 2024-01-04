#### CREATE VEGGIES #####
lettuce = Veggie.find_or_create_by(name: 'lettuce') do |veggie|
  veggie.color = 'green-600'
  veggie.png = '/assets/lettuce.png'
end

onion = Veggie.find_or_create_by(name: 'onion') do |veggie|
  veggie.color = 'pink-700'
  veggie.png = '/assets/onion.png'
end

cabbage = Veggie.find_or_create_by(name: 'cabbage') do |veggie|
  veggie.color = 'fuchsia-800'
  veggie.png = '/assets/cabbage.png'
end

pepper = Veggie.find_or_create_by(name: 'pepper') do |veggie|
  veggie.color = 'yellow-400'
  veggie.png = '/assets/pepper.png'
end

carrot = Veggie.find_or_create_by(name: 'carrot') do |veggie|
  veggie.color = 'orange-500'
  veggie.png = '/assets/carrot.png'
end

tomato = Veggie.find_or_create_by(name: 'tomato') do |veggie|
  veggie.color = 'red-700'
  veggie.png = '/assets/tomato.png'
end

#### CREATE SCORING CONDITIONS #####

# ["-1/cabbage",
#  "-1/carrot",
#  "-1/lettuce",
#  "-1/onion",
#  "-1/pepper",
#  "-1/tomato",
#  "-2/cabbage",
#  "-2/carrot",
#  "-2/lettuce",
#  "-2/onion",
#  "-2/pepper",
#  "-2/tomato",
#  "-4/cabbage",
#  "-4/carrot",
#  "-4/lettuce",
#  "-4/onion",
#  "-4/pepper",
#  "-4/tomato",
#  "1/cabbage",
#  "1/carrot",
#  "1/lettuce",
#  "1/onion",
#  "1/pepper",
#  "1/tomato",
#  "10/most cabbage",
#  "10/most carrot",
#  "10/most lettuce",
#  "10/most onions",
#  "10/most pepper",
#  "10/most tomato",
#  "10/most total veggies",
#  "12/tomato, lettuce, carrot, onion, pepper, and cabbage",
#  "2/cabbage",
#  "2/carrot",
#  "2/lettuce",
#  "2/onion",
#  "2/pepper",
#  "2/tomato",
#  "3/cabbage",
#  "3/carrot",
#  "3/lettuce",
#  "3/odd total cabbage",
#  "3/odd total carrot",
#  "3/odd total lettuce",
#  "3/odd total onion",
#  "3/odd total pepper",
#  "3/odd total tomato",
#  "3/onion",
#  "3/pepper",
#  "3/tomato",
#  "3/veggie with at least 2",
#  "4/cabbage",
#  "4/carrot",
#  "4/lettuce",
#  "4/onion",
#  "4/pepper",
#  "4/tomato",
#  "5/cabbage, and lettuce",
#  "5/cabbage, and onion",
#  "5/cabbage, and pepper",
#  "5/cabbage, and tomato",
#  "5/carrot, and lettuce",
#  "5/carrot, and onion",
#  "5/carrot, and pepper",
#  "5/carrot, and tomato",
#  "5/lettuce, and onion",
#  "5/missing veggie type",
#  "5/onion, and pepper",
#  "5/pair cabbage",
#  "5/pair carrot",
#  "5/pair lettuce",
#  "5/pair onions",
#  "5/pair pepper",
#  "5/pair tomato",
#  "5/tomato, and lettuce",
#  "5/tomato, and pepper",
#  "5/veggie type with at least 3",
#  "7/even total cabbage",
#  "7/even total carrot",
#  "7/even total lettuce",
#  "7/even total onion",
#  "7/even total pepper",
#  "7/even total tomato",
#  "7/fewest cabbage",
#  "7/fewest carrot",
#  "7/fewest lettuce",
#  "7/fewest onions",
#  "7/fewest pepper",
#  "7/fewest tomato",
#  "7/fewest total veggies",
#  "8/cabbage, carrot, and tomato",
#  "8/cabbage, tomato, and lettuce",
#  "8/carrot, cabbage, and onion",
#  "8/carrot, onion, and pepper",
#  "8/lettuce, carrot, and onion",
#  "8/lettuce, pepper, and carrot",
#  "8/onion, pepper, and cabbage",
#  "8/onion, tomato, and pepper",
#  "8/pepper, cabbage, and tomato",
#  "8/pepper, lettuce, and cabbage",
#  "8/three cabbage",
#  "8/three carrot",
#  "8/three lettuce",
#  "8/three onions",
#  "8/three pepper",
#  "8/three tomato",
#  "8/tomato, lettuce, and carrot",
#  "8/tomato, onion, and lettuce"]



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
