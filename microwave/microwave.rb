# Microwave Class
class Microwave
  def initialize(time)
    seconds = time % 100
    minutes = time / 100 * 60
    @time = Time.at seconds + minutes
  end

  def timer
    @time.strftime '%M:%S'
  end
end
