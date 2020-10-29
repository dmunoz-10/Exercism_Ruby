# ResistorColorTrio class
class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def initialize(colors)
    raise ArgumentError if (colors - COLORS).any?

    @colors = colors
  end

  def label
    value = raw_value >= 1000 ? raw_value / 1000 : raw_value
    "Resistor value: #{value} #{unity}"
  end

  private

  def raw_value
    @raw_value ||= begin
      value = "#{COLORS.index(@colors[0])}#{COLORS.index(@colors[1])}".to_i
      value * 10**COLORS.index(@colors[2])
    end
  end

  def unity
    @unity ||= raw_value >= 1000 ? 'kiloohms' : 'ohms'
  end
end
