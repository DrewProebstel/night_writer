require './lib/night_writer.rb'
require 'pry'

class Translator
  def initialize(input)
    @text = input.get_message
  end

end
