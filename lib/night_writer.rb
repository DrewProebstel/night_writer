def get_message
  handle = File.open(ARGV[0], "r")
  incoming_text = handle.read
  handle.close
  incoming_text
end

def write
  capitalized_test = get_message.upcase
  writer = File.open(ARGV[1], "w")
  writer.write(capitalized_test)
end

def count_lines
  lines = File.readlines(ARGV[0])
  line_count = lines.size
  text = lines.join
  text.length
end

get_message
write
puts "Created '#{ARGV[1]}'' containing #{count_lines} characters"
