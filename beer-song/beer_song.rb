# BeerSong Class
class BeerSong
  def initialize
    @m = { 2 => "# bottles of beer on the wall, # bottles of beer.
Take one down and pass it around, % bottles of beer on the wall.\n",
           1 => "1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.\n",
           0 => "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.\n" }
  end

  def verse(num)
    return @m[0] if num.zero?
    return @m[1] if num == 1
    return @m[2].tr('#', '2').gsub('% bottles', '1 bottle') if num == 2
    @m[2].gsub('#', num.to_s).gsub('%', (num - 1).to_s)
  end

  def verses(initial, final)
    initial.downto(final).map { |x| verse(x) }.join("\n")
  end
end

module BookKeeping
  VERSION = 3
end
