cases = gets.chomp.to_i
contacts = {}

cases.times do
  line = gets.chomp
  line = line.split(' ')
  contact = { line[0] => line[1].to_i }
  contacts.merge!(contact)
end

lines = STDIN.read

lines.each_line do |line|
  puts contacts.has_key?(line.chomp) ? "#{line.chomp}=#{contacts[line.chomp]}" : "Not Found"
end