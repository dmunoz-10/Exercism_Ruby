# Bob class
class Bob
  @a = { 1 => 'Sure.', 2 => 'Whoa, chill out!',
         3 => 'Calm down, I know what I\'m doing!', 4 => 'Fine. Be that way!',
         5 => 'Whatever.' }
  def self.hey(rem)
    return @a[4] if rem.strip.size.zero?
    return @a[3] if uppercase?(rem) && rem.strip.end_with?('?')
    return @a[1] if rem.strip.end_with?('?')
    return @a[2] if uppercase?(rem)
    @a[5]
  end

  def self.uppercase?(phrase)
    return false if phrase.scan(/[A-Za-z]/).size.zero?
    temp = phrase
    temp.scan(/[A-Z]/).size == phrase.scan(/[A-Za-z]/).size
  end
end

module BookKeeping
  VERSION = 2
end
