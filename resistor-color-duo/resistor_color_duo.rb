# ResistorColorDuo module
module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(colors)
    color1, color2 = colors

    (COLORS.index(color1) * 10) + COLORS.index(color2)
  end
end
