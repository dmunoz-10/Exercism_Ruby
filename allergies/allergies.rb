# Allergies Class
class Allergies
  ALLERGIES = { cats: 128, pollen: 64,
                chocolate: 32, tomatoes: 16,
                strawberries: 8, shellfish: 4,
                peanuts: 2, eggs: 1 }.freeze

  attr_reader :list

  def initialize(score)
    @list = []
    score_temp = score > 256 ? score - 256 : score

    ALLERGIES.each do |item, value|
      if score_temp >= value
        @list << item.to_s
        score_temp -= value
      end
    end

    @list.reverse!
  end

  def allergic_to?(allergen)
    @list.include?(allergen)
  end
end
