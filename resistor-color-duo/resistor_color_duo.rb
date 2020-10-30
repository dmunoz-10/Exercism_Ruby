# ResistorColorDuo module
module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(colors)
    "#{COLORS.index(colors[0])}#{COLORS.index(colors[1])}".to_i
  end
end
