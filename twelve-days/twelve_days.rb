class TwelveDays
  GIFTS = [
    { number: 'first',    gift: 'a Partridge in a Pear Tree' },
    { number: 'second',   gift: 'two Turtle Doves' },
    { number: 'third',    gift: 'three French Hens' },
    { number: 'fourth',   gift: 'four Calling Birds' },
    { number: 'fifth',    gift: 'five Gold Rings' },
    { number: 'sixth',    gift: 'six Geese-a-Laying' },
    { number: 'seventh',  gift: 'seven Swans-a-Swimming' },
    { number: 'eighth',   gift: 'eight Maids-a-Milking' },
    { number: 'ninth',    gift: 'nine Ladies Dancing' },
    { number: 'tenth',    gift: 'ten Lords-a-Leaping' },
    { number: 'eleventh', gift: 'eleven Pipers Piping' },
    { number: 'twelfth',  gift: 'twelve Drummers Drumming' }
  ].freeze

  def self.song
    verses = ''
    (0..11).each do |i|
      spaces = i == 11 ? "\n" : "\n\n"
      verses += "#{verse(GIFTS[i][:number], gifts_until(i))}#{spaces}"
    end

    verses
  end

  class << self
    private

    def gifts_until(number)
      gifts = GIFTS[..number].reverse
      gifts.map do |g|
        if g == gifts.last && gifts.size > 1
          "and #{g[:gift]}"
        else
          g[:gift]
        end
      end.join(', ')
    end

    def verse(number, gift)
      "On the #{number} day of Christmas my true love gave to me: #{gift}."
    end
  end
end
