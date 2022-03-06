require "./lib/night_writer"
require './lib/translator'
require 'rspec'
RSpec.describe Translator do
  it " trasnslator is translator class" do
    # let(:arguments) { ['message.txt', 'test.txt'] }
    arguments = ['message.txt', 'test.txt']
    message = Night_writer.new(arguments)
    text = Translator.new(message)
    expect(text).to be_a(Translator)
  end
end
