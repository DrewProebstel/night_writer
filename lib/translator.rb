require './lib/night_writer.rb'
require './lib/alphabet.rb'
require 'pry'

class Translator
  attr_accessor :text, :top_array, :bottom_array, :middle_array, :alphabet
  def initialize(input,alphabet)
    @text = input.get_message.tr("\n", " ")
    @top_array = []
    @middle_array = []
    @bottom_array = []
    @alphabet = alphabet
  end

  def translate
    text.each_char do |letter|
      top_array.push(alphabet.alphabet[letter.downcase][0])
      middle_array.push(alphabet.alphabet[letter.downcase][1])
      bottom_array.push(alphabet.alphabet[letter.downcase][2])
    end
  end

  def compile_array
    full_string = StringIO.new
    index = 0
    while top_array.length > index do
    full_string.puts(top_array[index..index+39].flatten.join)
    full_string.puts(middle_array[index..index+39].flatten.join)
    full_string.puts(bottom_array[index..index+39].flatten.join)
    full_string.puts
    index += 40
    end
    binding.pry
    return full_string.string
  end

end
