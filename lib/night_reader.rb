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

  def count_lines
    lines = File.readlines(@to_read)
    line_count = lines.size
    text = lines.join
    text.length
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
  puts "Created '#{message.to_write}' containing #{message.count_lines/6} characters"
end
