#!/usr/bin/env ruby


"""
A simple implementation of a gear mechanism in Ruby.
It calculates the gear ratio and gear inches based on the provided chainring, cog, rim, and tire values.
"""


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, rim, tire)
        @chainring = chainring
        @cog = cog
        @wheel = Wheel.new(rim, tire)
    end

    def ratio
        chainring / cog.to_f
    end

    def gear_inches
        # tire goes around rim twice for diameter
      ratio * wheel.diameter
    end

    Wheel = Struct.new(:rim, :tire) do
      def diameter
        rim + (tire * 2)
      end
    end
end



#puts Blinkered.new.cog(Gear.new(54,11))
# puts Gear.new(52, 11, 26, 1.5).gear_inches
# puts Gear.new(30, 27, 24, 1.25).gear_inches
