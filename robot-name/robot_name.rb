# Robot Class
class Robot
  @@names = ('AA000'..'ZZ999').to_a.shuffle

  attr_reader :name

  def initialize
    reset
  end

  def reset
    @name = @@names.pop
  end

  def self.forget
    @@names = ('AA000'..'ZZ999').to_a.shuffle
  end
end
