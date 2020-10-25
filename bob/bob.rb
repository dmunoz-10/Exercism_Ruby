# frozen_string_literal: true

# Bob class
class Bob
  RESPONSES = {
    1 => 'Sure.', 2 => 'Whoa, chill out!',
    3 => "Calm down, I know what I'm doing!", 4 => 'Fine. Be that way!',
    5 => 'Whatever.'
  }.freeze

  def self.hey(rem)
    return RESPONSES[4] if rem.strip.size.zero?
    return RESPONSES[3] if uppercase?(rem) && rem.strip.end_with?('?')
    return RESPONSES[1] if rem.strip.end_with?('?')
    return RESPONSES[2] if uppercase?(rem)

    RESPONSES[5]
  end

  def self.uppercase?(phrase)
    return false if phrase.scan(/[A-Za-z]/).size.zero?

    phrase.scan(/[A-Z]/).size == phrase.scan(/[A-Za-z]/).size
  end
end
