require 'simplecov'
SimpleCov.start
require 'rspec'
require './lib/night_reader.rb'
require './lib/night_reader_translator'
require './lib/night_reader_alphabet'
require 'pry'


RSpec.describe Translator_reader do
  it "read specific line reads a specific line" do
    argument = ['line_in_test.txt', 'output.txt']
    message = Night_reader.new(argument)
    alphabet = Alphabet_reader.new
    text = Translator_reader.new(message,alphabet)
    expect(text.read_specfic_line(1)).to eq("00.00.00..\n")
  end

  it "to test makes an array" do
    argument = ['line_in_test.txt', 'output.txt']
    message = Night_reader.new(argument)
    alphabet = Alphabet_reader.new
    text = Translator_reader.new(message,alphabet)
    expect(text.make_array).to eq([[".0", "00", "0."], ["0.", ".0", ".."], [".0", "0.", "0."], [".0", "00", "0."], ["..", "..", ".."]])
  end

  it "translate turns array into string" do
    argument = ['braille1.txt', 'output.txt']
    message = Night_reader.new(argument)
    alphabet = Alphabet_reader.new
    text = Translator_reader.new(message,alphabet)
    expect(text.translate(text.make_array)).to eq("a b c d e f g h i j k l m n o p q r s t u v w x y z ")
  end
end
