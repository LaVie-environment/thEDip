#!/usr/bin/env ruby

# Flag for debugging (change to false when finished debugging)
DEBUG_MODULE_1 = true

puts "Enter the customer's age: "

# Get an integer age value from the user
age = gets.to_i

# Determine the cost based on age
if DEBUG_MODULE_1
  puts age
end

case
# '=' is assignment NOT equality test '=='
when (age = 12) then
  cost = 9
when (age >= 65) then
  cost = 12
else
  cost = 18
end
if DEBUG_MODULE_1
  puts age
end


# Determine the cost based on age
"""
if ((age <= 12) or (age >= 65))
  cost = 9
else
  cost = 18
end

"""

# Case Statement
"""
case
when (age = 12) then
  cost = 9
when (age >= 65) then
  cost = 12
else
  cost = 18
end
# DEBUG
puts age
"""

# Print out the final cost
puts "Ticket cost: " + cost.to_s







