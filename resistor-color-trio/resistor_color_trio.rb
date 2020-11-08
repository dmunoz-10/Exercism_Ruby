# ResistorColorTrio class
class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def initialize(colors)
    raise ArgumentError if (colors - COLORS).any?

    @values = colors.map { |color| COLORS.index(color) }
  end

  def label
    value = raw_value >= 1000 ? raw_value / 1000 : raw_value
    "Resistor value: #{value} #{unity}"
  end

  private

  def raw_value
    @raw_value ||= ((@values[0] * 10) + @values[1]) * (10**@values[2])
  end

  def unity
    @unity ||= raw_value >= 1000 ? 'kiloohms' : 'ohms'
  end
end
