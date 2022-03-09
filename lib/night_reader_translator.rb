require './lib/night_writer.rb'
require './lib/alphabet.rb'
require 'pry'

class Translator_reader
  attr_accessor :text, :top_array, :bottom_array, :middle_array, :alphabet, :count_char
  def initialize(input,alphabet)
    @text = input.to_read
    @count_char = input.count_char
    @top_array = []
    @middle_array = []
    @bottom_array = []
    @alphabet = alphabet.alphabet
  end

  def read_specfic_line(line)
    specific_line = IO.readlines(text)[line]
  end

  def make_array
    final_array = []
    index = 0
    count_char.times do
      to_test = []
      to_test.push(read_specfic_line((index/40)*4)[index%40*2..index%40*2+1])
      to_test.push(read_specfic_line(1 + (index/40)*4)[index%40*2..index%40*2+1])
      to_test.push(read_specfic_line(2 + (index/40)*4)[index%40*2..index%40*2+1])
      final_array.push(to_test)
      index += 1
    end
    return final_array
  end


  def translate(braille_array)
    translated_array = braille_array.map{|letter| alphabet[letter]}
    translated_array.join
  end



end
