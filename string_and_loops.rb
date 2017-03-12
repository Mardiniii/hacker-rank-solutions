cases = gets.chomp.to_i
strings_array = []

cases.times do
  string = gets.chomp
  strings_array.push(string)
end

strings_array.each do |string|
  even_chars = ''
  odd_chars = ''
  string.each_char.with_index do |char, index|
    if index.even?
      even_chars = even_chars + char
    else
      odd_chars = odd_chars + char
    end
  end
  puts "#{even_chars} #{odd_chars}"
end