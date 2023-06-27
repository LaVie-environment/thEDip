#!/usr/bin/env ruby


"""
A simple implementation of a gear mechanism in Ruby.
It calculates the gear ratio and gear inches based on the provided chainring, cog, rim, and tire values.
"""


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, wheel=nil)
        @chainring = chainring
        @cog = cog
        @wheel = wheel
    end

    def ratio
        chainring / cog.to_f
    end

    def gear_inches
        # tire goes around rim twice for diameter
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

end

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference

puts Gear.new(52, 11, @wheel).gear_inches

puts Gear.new(52, 11).ratio

  
      



#puts Blinkered.new.cog(Gear.new(54,11))
# puts Gear.new(52, 11, 26, 1.5).gear_inches
# puts Gear.new(30, 27, 24, 1.25).gear_inches
