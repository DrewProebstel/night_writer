require './lib/translator'
require 'pry'
class Night_writer
  attr_accessor :to_read, :to_write
  def initialize(args)
    @to_read = args[0]
    @to_write = args[1]
  end

  def get_message
    handle = File.open(@to_read, "r")
    incoming_text = handle.read
    handle.close
    incoming_text
  end

  def write
    capitalized_test = get_message.to_s
    writer = File.open(@to_write, "w")
    writer.write(capitalized_test)
  end

  def count_lines
    lines = File.readlines(@to_read)
    line_count = lines.size
    text = lines.join
    text.length
  end
end
if $0 == __FILE__
  message = Night_writer.new(ARGV)
  message.get_message
  message.write
  puts "Created '#{message.to_write}' containing #{message.count_lines} characters"
end
