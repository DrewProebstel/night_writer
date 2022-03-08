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
    @alphabet = alphabet.alphabet
  end

  def read_specfic_line(line)
    specific_line = IO.readlines(text)[line]
  end

  def make_array
    final_array = []
    index = 0
    (char_count/6).times do
      to_test = []
      to_test.push(read_specfic_line((index/39)*4)[index*2%40..index*2%40+1])
      to_test.push(read_specfic_line(1 + (index/39)*4)[index*2%40..index*2%40+1])
      to_test.push(read_specfic_line(2 + (index/39)*4)[index*2%40..index*2%40+1])
      final_array.push(to_test)
      index += 1
    end
    return final_array
  end


    def translate(braille_array)
      translated_array = braille_array.map{|letter| alphabet[letter]}
      binding.pry
      translated_array.join
      end



end
