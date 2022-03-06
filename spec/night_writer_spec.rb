require "./lib/night_writer"
require "rspec"
RSpec.describe Night_writer do
  it " message exists" do
    let(:arguments) { ['message.txt', 'braille.txt'] }
    @to_read = message.txt
    @to_write = braille.txt
    message = Night_writer.new
    expect(message).to be_a(Night_writer)
  end
end
