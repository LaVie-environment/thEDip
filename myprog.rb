#!/usr/bin/ruby
#puts "Hello, Ruby Programmer"
#puts "It is now #{Time.now}"

case player.age
when 0..12
    'Minor League'
when 13..18
    'Developing'
when 19..30
    'Prime'
when 31..40
    'Decline'
else
    'Retirement'
end