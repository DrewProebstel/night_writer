require './lib/night_writer.rb'
require './lib/alphabet.rb'
require 'pry'

class Translator_reader
  attr_accessor :text, :top_array, :bottom_array, :middle_array, :alphabet, :char_count
  def initialize(input,alphabet)
    @text = input.to_read
    @char_count = input.count_lines
    @top_array = []
    @middle_array = []
    @bottom_array = []
    @alphabet = alphabet
  end

  def read_specfic_line(line)
    specific_line = IO.readlines(text)[line]
    binding.pry
  end
  def translate
    index = 0
    text.length do |letter|
      read_specfic_line(index/40)
      read_specfic_line(1 + index/40)
      read_specfic_line(2 + index/40)
    end
  end

end
