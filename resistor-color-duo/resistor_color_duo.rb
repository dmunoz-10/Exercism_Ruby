# ResistorColorDuo module
module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(colors)
    colors[0..1].each_with_object([]) do |color, value|
      value << COLORS.index(color)
    end.join.to_i
  end
end
