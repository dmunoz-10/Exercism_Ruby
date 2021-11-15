class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    (success_rate * @speed * 221) / 100.0
  end

  def working_items_per_minute
    production_rate_per_hour.to_i / 60
  end

  private

  def success_rate
    case @speed
      when 1..4 then 100
      when 5..8 then 90
      when 9    then 80
      when 10   then 77
    end
  end
end
