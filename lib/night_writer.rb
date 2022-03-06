require './lib/translator'
require './lib/alphabet'
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

  def write(top_array,middle_array,bottom_array)
    capitalized_test = get_message.upcase
    writer = File.open(@to_write, "w")
    writer.write(top_array.flatten.join)
    writer.write("\n")
    writer.write(middle_array.flatten.join)
    writer.write("\n")
    writer.write(bottom_array.flatten.join)



    # File.open(@to_write, 'r+') do |file|
    #   lines = file.each_line.to_a
    #   lines[0] = top_array.flatten.join
    #   lines[1] = middle_array.flatten.join
    #   lines[2] = bottom_array.flatten.join
    #   file.write(lines.join)
    # end
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
  alphabet = Alphabet.new
  text = Translator.new(message,alphabet)
  message.get_message
  text.translate
  message.write(text.top_array,text.middle_array,text.bottom_array)
  puts "Created '#{message.to_write}' containing #{message.count_lines} characters"
end
