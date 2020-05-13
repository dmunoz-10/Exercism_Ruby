# Allergies Class
class Allergies
  attr_reader :list
  ITEMS = { cats: 128, pollen: 64,
            chocolate: 32, tomatoes: 16,
            strawberries: 8, shellfish: 4,
            peanuts: 2, eggs: 1 }.freeze

  def initialize(score)
    @list = []
    score_temp = score
    ITEMS.each do |item, value|
      if score_temp >= value
        @list << item.to_s
        score_temp -= value
      end
    end
    @list.reverse!
  end

  def allergic_to?(item)
    @list.include?(item)
  end
end

module BookKeeping
  VERSION = 1
end
