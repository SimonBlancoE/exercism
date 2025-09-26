class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/\[.*?\]:/, '').strip
  end

  def log_level
    @line.match(/\[(.*?)\]/)[1].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
