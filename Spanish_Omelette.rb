# print_divider
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

puts "*    Let's cook a Spanish Omelette!    *"
print_divider

puts "You will need the following ingredients:"

ingredients.each do |ingredient|
  puts ">>> #{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "\n"
  print_divider

  puts "Do you have all the ingredients for your Omelette? (Y/N): "
  answer = gets.chomp.upcase

  if answer == 'N'
    puts "Better go shopping before you start then."
    print_progress_bar
  elsif answer == 'Y'
    puts "Let's get started!"
    break
  else
    puts "That's not a valid input. Please Try again."
  end
end
