handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

capitalized_test = incoming_text.upcase

writer = File.open(ARGV[1], "w")

writer.write(capitalized_test)

def count_lines
  lines = File.readlines(ARGV[0])
  line_count = lines.size
  text = lines.join
  total_characters = text.length
  puts "#{total_characters} characters"
end
writer.close
count_lines
