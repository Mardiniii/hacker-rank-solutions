require 'byebug'

# Get data from console
a0,a1,a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i

b0,b1,b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i

alice_numbers = [ a0, a1, a2 ]
bob_numbers = [ b0, b1, b2 ]

def compare_the_triplets(player1, player2)
  score1 = 0
  score2 = 0

  3.times do |index|
    winner = compare_numbers(player1[index], player2[index])

    case winner
    when 'Alice' then score1 += 1
    when 'Bob' then score2 += 1
    end

  end

  "#{score1} #{score2}"
end

def compare_numbers(num1, num2)
  comparision = num1 <=> num2
  case comparision
  when 1 then 'Alice'
  when -1 then 'Bob'
  when 0 then 'Draw'
  end
end

describe 'compare_numbers' do
  it "should return the correct comparision result" do
    expect(compare_numbers(4, 3)).to eq 'Alice'
    expect(compare_numbers(3, 4)).to eq 'Bob'
    expect(compare_numbers(3, 3)).to eq 'Draw'
  end
end

describe "compare_the_triplets" do
  it "should return the correct winner" do
    expect(compare_the_triplets([ 8, 9, 10 ], [ 3, 6, 10 ])).to eq '2 0'
    expect(compare_the_triplets([ 5, 6, 7 ], [ 3, 6, 10 ])).to eq '1 1'
    expect(compare_the_triplets([ 3, 0, 10 ], [ 5, 6, 10 ])).to eq '0 2'
  end
end
