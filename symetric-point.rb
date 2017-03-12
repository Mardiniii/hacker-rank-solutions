# Enter your code here. Read input from STDIN. Print output to STDOUT
puts 'Number of cases'
cases = gets.chomp.to_i

data = []

cases.times do
  puts 'Coordinates'
  input = gets.chomp
  coordinates = input.split(' ')
  coordinates.map! { |e| e.to_i }
  data.push(coordinates)
end

data.each do |e|
  x = 2 * e[2] - e[0]
  y = 2 * e[3] - e[1]
  puts "#{x} #{y}"
end