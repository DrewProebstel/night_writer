require 'pry'
class Alphabet_reader
  attr_reader :alphabet
  def initialize()
  @alphabet = {[".0","00","0."] =>"t", ["0.", ".0", ".."] =>"e", [".0", "0.", "0."] =>"s", [".0", "00", "0."] =>"t", ["..", "..", ".."] => " "}
  end
end
