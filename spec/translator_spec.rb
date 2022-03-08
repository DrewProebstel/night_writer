require 'simplecov'
SimpleCov.start
require "./lib/night_writer"
require './lib/translator'
require './lib/alphabet.rb'
require 'rspec'
RSpec.describe Translator do
  it " trasnslator is translator class" do

    arguments = ['message.txt', 'foo.txt']
    message = Night_writer.new(arguments)
    alphabet = Alphabet.new
    text = Translator.new(message,alphabet)
    expect(text).to be_a(Translator)
  end

  it " fills top middle and bottom array" do
    arguments = ['abc.txt', 'foo.txt']
    message = Night_writer.new(arguments)
    alphabet = Alphabet.new
    text = Translator.new(message,alphabet)
    text.translate
    expect(text.top_array).to eq([["0", "."], ["0", "."], ["0", "0"], [".", "."]])
    expect(text.middle_array).to eq([[".", "."], ["0", "."], [".", "."], [".", "."]])
    expect(text.bottom_array).to eq([[".", "."], [".", "."], [".", "."], [".", "."]])
  end
end
