# SpaceAge Class
class SpaceAge
  EARTH_ORBITAL_PERIOD = 31_557_600

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def on_earth
    @seconds / EARTH_ORBITAL_PERIOD
  end

  def on_mercury
    @seconds / (EARTH_ORBITAL_PERIOD * 0.2408467)
  end

  def on_venus
    @seconds / (EARTH_ORBITAL_PERIOD * 0.61519726)
  end

  def on_mars
    @seconds / (EARTH_ORBITAL_PERIOD * 1.8808158)
  end

  def on_jupiter
    @seconds / (EARTH_ORBITAL_PERIOD * 11.862615)
  end

  def on_saturn
    @seconds / (EARTH_ORBITAL_PERIOD * 29.447498)
  end

  def on_uranus
    @seconds / (EARTH_ORBITAL_PERIOD * 84.016846)
  end

  def on_neptune
    @seconds / (EARTH_ORBITAL_PERIOD * 164.79132)
  end
end
