def reduce_string(string)
  return "Empty String" if string.length == 0

  if repeated_chars?(string)
    chars = string.chars
    chars.each_with_index do | x, index |
      if x == chars[index + 1]
        chars.delete_at(index)
        chars.delete_at(index)
        break
      end
    end

    reduce_string(chars.join)
  else
    string
  end
end

def repeated_chars?(string)
  string.scan(/(([a-z])\2)/).size > 0
end

# Rspec tests

describe 'reduce_string' do
  it "returnded value is correct" do
    string1 = "aaabbbccc"
    string2 = "aaabccddd"

    expect(reduce_string(string1)).to eq "abc"
    expect(reduce_string(string2)).to eq "abd"
  end

  it "returned value is an Empty String" do
    string3 = "baab"
    string4 = "aa"
    string5 = ""

    expect(reduce_string(string3)).to eq "Empty String"
    expect(reduce_string(string4)).to eq "Empty String"
    expect(reduce_string(string5)).to eq "Empty String"
  end
end
