# BeerSong Class
class BeerSong
  @verses = { 2 => "# bottles of beer on the wall, # bottles of beer.
Take one down and pass it around, % bottles of beer on the wall.\n",
              1 => "1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.\n",
              0 => "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.\n" }.freeze

  def self.recite(number, iterations)
    messages = []
    iterations.times do
      messages << verse(number)
      number -= 1
    end
    messages.join("\n")
  end

  def self.verse(num)
    return @verses[0] if num.zero?
    return @verses[1] if num == 1
    return @verses[2].tr('#', '2').gsub('% bottles', '1 bottle') if num == 2

    @verses[2].gsub('#', num.to_s).gsub('%', (num - 1).to_s)
  end
end
