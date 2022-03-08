require "./lib/night_writer"
require './lib/translator'
require './lib/alphabet.rb'
require 'rspec'
RSpec.describe Translator do
  xit " trasnslator is translator class" do
    # let(:arguments) { ['message.txt', 'test.txt'] }
    arguments = ['message.txt', 'foo.txt']
    message = Night_writer.new(arguments)
    alphabet = Alphabet.new
    text = Translator.new(message,alphabet)
    expect(text).to be_a(Translator)
  end

  xit " fills top middle and bottom array" do
    # let(:arguments) { ['message.txt', 'test.txt'] }
    arguments = ['test.txt', 'foo.txt']
    message = Night_writer.new(arguments)
    alphabet = Alphabet.new
    text = Translator.new(message,alphabet)
    text.translate
    expect(text.top_array).to eq([[".", "."], ["0", "."], ["0", "."], [".", "."]])
    expect(text.middle_array).to eq([["0", "0"], ["0", "."], ["0", "."], ["0", "0"]])
    expect(text.bottom_array).to eq([[".", "."], [".", "."], [".", "."], [".", "."]])

  end


end
