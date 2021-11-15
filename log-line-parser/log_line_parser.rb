class LogLineParser
  attr_reader :message, :log_level

  def initialize(line)
    @line = line
    analyze_line
  end

  def reformat
    "#{@message} (#{@log_level})"
  end

  private

  def analyze_line
    @log_level, @message = @line.match(/\[(\w*)\]\: ([\w\s]*)/).captures
    @log_level.downcase!
    @message.strip!
  end
end
