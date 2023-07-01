#!/usr/bin/env ruby


"""
A simple implementation of a gear mechanism in Ruby.
It calculates the gear ratio and gear inches based on the provided chainring, cog, rim, and tire values.
"""


class Gear
<<<<<<< HEAD
    attr_reader :chainring, :cog, :rim, :tire
    def initialize(chainring, cog)
=======
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, wheel=nil)
>>>>>>> 625d7edbb52870cce56e840e80bb8f8c96d990fe
        @chainring = chainring
        @cog = cog
        @wheel = wheel
    end

    def ratio
        chainring / cog.to_f
    end

    def gear_inches
        # tire goes around rim twice for diameter
<<<<<<< HEAD
        ratio * (rim + (tire * 2))
    end
=======
      ratio * wheel.diameter
    end
end

Class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end

>>>>>>> 625d7edbb52870cce56e840e80bb8f8c96d990fe
end

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference

puts Gear.new(52, 11, @wheel).gear_inches

puts Gear.new(52, 11).ratio

  
      



#puts Blinkered.new.cog(Gear.new(54,11))
# puts Gear.new(52, 11, 26, 1.5).gear_inches
# puts Gear.new(30, 27, 24, 1.25).gear_inches
