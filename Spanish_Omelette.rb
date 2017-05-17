# print_divider
def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end


NUM_POTATOES = 3
NUM_EGGS = 4

ingredients = [
  { name: 'potatoes', quantity: NUM_POTATOES },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onions', quantity: 2 },
  { name: 'oil', quantity: 'A splash of' },
  { name: 'salt', quantity: 'A pinch of' },
]



time = Time.new

puts ""

case
when time.hour <= 11
  print "Good morning. Want to make some breakfast?"
when time.hour >= 12 && time.hour < 18
  print "Good afternoon. Want to make some lunch?"
when time.hour >= 18
  print "Good evening. Want to make some dinner?"
end
answer = gets.chomp.upcase

if answer == "N"
  exit
else
puts "\n"
puts "*    Let's cook a Spanish Omelette!    *"
print_divider

puts "You will need the following ingredients:"

ingredients.each do |ingredient|
  puts ">>> #{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "\n"
  print_divider

  print "Do you have all the ingredients for your Omelette? (Y/N): "
  answer = gets.chomp.upcase

  if answer == 'N'
    puts "\n"
    print "Better go shopping before you start then."
    print_progress_bar
  elsif answer == 'Y'
    puts "\n"
    puts "Let's get started!"
    break
  else
    puts "\n"
    puts "That's not a valid input. Please Try again."
    end
  end

  steps = [
    { description: "Scrape potatoes", action: "scrape_potatoes" },
    { description: "Cut potatoes into slices", action: "cut_potatoes" },
    { description: "Chop onion", action: "generic_recipe_step" },
    { description: "Heat the oil in a pan", action: "generic_recipe_step" },
    { description: "Add potatoes to the pan", action: "add_potatoes_to_pan" },
    { description: "Add onion to the pan", action: "generic_recipe_step" },
    { description: "Strain potatoes and onions", action: "generic_recipe_step" },
    { description: "Break the eggs", action: "break_eggs" },
    { description: "Beat the eggs", action: "generic_recipe_step" },
    { description: "Stir into the potatoes into the bowl with the salt", action: "generic_recipe_step" },
    { description: "Heat a little of the oil in a smaller pan", action: "generic_recipe_step" },
    { description: "Put everything into the pan and cook on a moderate heat", action: "generic_recipe_step"},
    { description: "When almost set, flip on to a plate and slide back into the pan", action: "generic_recipe_step" },
    { description: "Cook for a few more minutes, then slide the omelette on to a plate and cool for a few minutes before serving with garnish", action: "generic_recipe_step" }
  ]

  print_divider

  puts "Here are the steps to follow:"

  puts "\n"

  steps.each_with_index do |step, index|
    puts (index + 1).to_s + " - " + step[:description]
  end

  puts ""

  print_divider

  def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def scrape_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Scraping potato #{counter}"
    print_progress_bar
  end
end

def cut_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Cutting potato #{counter} into thick slices"
    print_progress_bar
  end
end

def add_potatoes_to_pan
  for counter in 1..NUM_POTATOES
    print "Adding potato #{counter} to the pan."
    print_progress_bar
  end
end

def break_eggs
  counter = 0
  while counter < NUM_EGGS
    counter += 1
    print "Breaking egg #{counter}"
    print_progress_bar
  end
end

def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
  answer = gets.chomp

  answer.upcase == 'Y'
end

steps.each_with_index do |step, index|
  print_divider

  loop do
    ready = ask_if_ready(step, index)
    break if ready

    puts "OK, I will give you some extra time."
    print_progress_bar
  end

  send(step[:action])
end

print_divider

puts "I hope you enjoy your omelette. Bon appetit!"
end
