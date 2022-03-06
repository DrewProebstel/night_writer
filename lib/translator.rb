require './lib/night_writer.rb'
require './lib/alphabet.rb'
require 'pry'

class Translator
  attr_accessor :text, :top_array, :bottom_array, :middle_array, :alphabet
  def initialize(input,alphabet)
    @text = input.get_message.delete!("\n")
    @top_array = []
    @middle_array = []
    @bottom_array = []
    @alphabet = alphabet
  end

  def translate
    text.each_char do |letter|
      top_array.push(alphabet.alphabet[letter][0])
      middle_array.push(alphabet.alphabet[letter][1])
      bottom_array.push(alphabet.alphabet[letter][2])
    end
  end

end
