require 'byebug'

def palindrome_generator(length, digits, number)
  return -1 if count_digits_to_be_palindrome(number) > digits

  palindromes = generate_numbers(number)

end

def count_digits_to_be_palindrome(number)
  count = 0
  return count if is_palindrome?(number)

  chars = number.chars
  length = chars.length

  ( length / 2 ).times do |index|
    count += 1 if chars[index] != chars[length - index  - 1]
  end

  count
end

def is_palindrome?(number)
  number == number.reverse
end

def generate_numbers(number)
  
end

# Rspec

describe 'count_digits_to_be_palindrome' do
  it 'should return 0 when is palindrom' do
    expect(count_digits_to_be_palindrome('9')).to eq 0
    expect(count_digits_to_be_palindrome('3993')).to eq 0
    expect(count_digits_to_be_palindrome('39993')).to eq 0
  end

  it 'should return the number of digits to be palindrome' do
    expect(count_digits_to_be_palindrome('3943')).to eq 1
    expect(count_digits_to_be_palindrome('0011')).to eq 2
    expect(count_digits_to_be_palindrome('31995')).to eq 2
    expect(count_digits_to_be_palindrome('12345')).to eq 2
    expect(count_digits_to_be_palindrome('123456')).to eq 3
  end
end

describe 'palindrome_generator' do
  it 'should return -1 if it is not possible to convert' do
    expect(palindrome_generator(4, 1, '0011')).to eq -1
  end
end
