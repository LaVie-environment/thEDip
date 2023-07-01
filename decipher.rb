#!/usr/bin/ruby

x = 'xylophone'
y = 'yoyo'
def fooz(a,b)
    x = 'zebra'
    "#{a}, played by #{x}, watched by #{b}"
end
a = 'owl'
puts "#{fooz(x,a)} --> #{fooz(a,y)}"