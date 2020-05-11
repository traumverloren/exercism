=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

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
  }

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    on_planet(:earth)
  end

  def on_mercury
    on_planet(:mercury)
  end

  def on_venus
    on_planet(:venus)
  end

  def on_mars
    on_planet(:mars)
  end

  def on_jupiter
    on_planet(:jupiter)
  end

  def on_saturn
    on_planet(:saturn)
  end

  def on_uranus
    on_planet(:uranus)
  end

  def on_neptune
    on_planet(:neptune)
  end

  private

  def on_planet(planet)
    @seconds.to_f /
      (ORBITAL_PERIOD_RATES[planet] * EARTH_ORBITAL_PERIOD_IN_SECONDS)
  end
end
