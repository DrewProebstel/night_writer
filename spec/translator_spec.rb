require "./lib/night_writer"
require './lib/translator'
require './lib/alphabet.rb'
require 'rspec'
RSpec.describe Translator do
  it " trasnslator is translator class" do
    # let(:arguments) { ['message.txt', 'test.txt'] }
    arguments = ['message.txt', 'foo.txt']
    message = Night_writer.new(arguments)
    text = Translator.new(message)
    expect(text).to be_a(Translator)
  end

  it " fills top middle and bottom array" do
    # let(:arguments) { ['message.txt', 'test.txt'] }
    arguments = ['test.txt', 'foo.txt']
    message = Night_writer.new(arguments)
    alphabet = Alphabet.new
    text = Translator.new(message,alphabet)
    text.translate
    expect(text).to be_a(Translator)
  end


end
