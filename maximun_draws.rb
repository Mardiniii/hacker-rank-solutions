cases = gets.chomp.to_i
total_pairs = []

cases.times do
  pairs = gets.chomp.to_i
  total_pairs.push(pairs)
end

total_pairs.each { |pair| puts pair + 1}