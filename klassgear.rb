#!/usr/bin/env ruby

class Gear
    attr_reader :chainring, :cog :rim, :tire
    def initialize(chainring, cog)
        @chainring = chainring
        @cog = cog
    end

    def ratio
        chainring / cog.to_f
    end

    def gear_inches
        # tire goes around rim twice for diameter
        ratio * (rim + (tire * 2))
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
puts Gear.new(30, 27, 24, 1.25).gear_inches