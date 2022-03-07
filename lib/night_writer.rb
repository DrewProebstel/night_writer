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
    index = 0
    while top_array.length > index do
    writer.write(top_array[index..index+39].flatten.join)
    writer.write("\n")
    writer.write(middle_array[index..index+39].flatten.join)
    writer.write("\n")
    writer.write(bottom_array[index..index+39].flatten.join)
    writer.write("\n")
    writer.write("\n")
    index += 40
    end
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
