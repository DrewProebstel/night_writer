require 'rspec'
require './lib/night_reader.rb'
require './lib/night_reader_translator'
require './lib/night_reader_alphabet'
require 'pry'


RSpec.describe Translator_reader do
  xit "read specific line reads a specific line" do
    argument = ['line_in_test.txt', 'output.txt']
    message = Night_reader.new(argument)
    alphabet = Alphabet_reader.new
    text = Translator_reader.new(message,alphabet)
    binding.pry
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
    argument = ['line_in_test.txt', 'output.txt']
    message = Night_reader.new(argument)
    alphabet = Alphabet_reader.new
    text = Translator_reader.new(message,alphabet)
    expect(text.translate(text.make_array)).to eq("test ")
  end
end
