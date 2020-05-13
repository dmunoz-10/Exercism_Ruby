require 'set'

# Robot Class
class Robot
  @@used_names = Set.new
  attr_reader :name

  def initialize
    reset
  end

  def reset
    loop do
      @name = ('A'..'Z').to_a.sample + ('A'..'Z').to_a.sample
      @name += format('%03d', rand(0..1000))
      unless @@used_names.include?(@name)
        @@used_names << @name
        return
      end
    end
  end

  def self.forget; end
end
