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
