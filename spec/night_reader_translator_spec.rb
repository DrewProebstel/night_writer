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
    expect(text.read_specfic_line(1)).to eq("BBBBB\n")
  end
end
