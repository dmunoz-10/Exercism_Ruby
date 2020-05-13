# Change Class
class Change
  def self.generate(coins, money)
    return -1 if money < 0 || (money < coins.min && money > 0)
    coins.sort { |a, z| z <=> a}.each_with_object([]) do |coin, temp|
      while money >= coin
        temp << coin
        money -= coin
      end
    end.sort
  end
end

module BookKeeping
  VERSION = 2
end
