#!/usr/bin/env ruby
puts "Enter the customer's age: "
# Get an integer age value from the user
age = gets.to_i

# Determine the cost based on age
if (age <= 12)
  cost = 9
elsif (age >= 65)
  cost = 12
else
  cost = 18
end

# Print out the final cost
puts "Ticket cost: " + cost.to_s

