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

  def write(string)
    to_write = File.open(@to_write, "w")
    to_write.write(string)
  end

  def count_char
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
  message.write(text.compile_array)
  puts "Created '#{message.to_write}' containing #{message.count_char} characters"
end
