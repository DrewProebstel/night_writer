require './lib/night_reader.rb'
require './lib/night_reader_translator'
require './lib/night_reader_alphabet'
require 'pry'
class Night_reader
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

  def count_char
    lines = File.readlines(@to_read)
    line_count = lines.size
    text = lines.join
    num_new_line = text.count "\n"
    (text.length - num_new_line)/6
  end

  def writes(translator)
    writer = File.open(@to_write, "w")
    writer.write(translator.translate(translator.make_array))
  end
end

if $0 == __FILE__
  message = Night_reader.new(ARGV)
  alphabet = Alphabet_reader.new
  text = Translator_reader.new(message,alphabet)
  message.get_message
  message.writes(text)
  puts "Created '#{message.to_write}' containing #{message.count_char} characters"
end
