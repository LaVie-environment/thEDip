#!/usr/bin/ruby

def triple_add(a, b, c)
    x = a.to_s + b.to_s + c.to_s
    "#{x}!"
end

puts triple_add(1,2,5)
