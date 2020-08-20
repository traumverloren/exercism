# frozen_string_literal: true

class SpaceAge
  EARTH_ORBITAL_PERIOD_IN_SECONDS = 31_557_600

  ORBITAL_PERIOD_RATES = {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze

  def initialize(seconds)
    @seconds = seconds
  end

  %w[earth mercury venus mars jupiter saturn uranus neptune].each do |planet|
    define_method "on_#{planet}" do
      @seconds.fdiv(ORBITAL_PERIOD_RATES[planet.to_sym] * EARTH_ORBITAL_PERIOD_IN_SECONDS)
    end
  end
end
