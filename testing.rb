def random_card
  cards = [“two”, “three”, “four”, “five”, “six”, “seven”,
  “eight”, “nine”, “ten”,
  “jack”, “queen”, “king”, “ace”]
  cards[rand(13)]
end

def move
  while true do
    puts “Hit or stick?”
    choice = gets.chomp.downcase
    if choice == “hit” || choice == “stick”
    return choice
    end
  end
end

def score(cards)
  score_accumulator = 0
  card_values = {
  “two” => 2,
  “three” => 3,
  “four” => 4,
  “five” => 5,
  “six” => 6,
  “seven” => 7,
  “eight” => 8,
  “nine” => 9,
  “ten” => 10,
  “jack” => 10,
  “queen” => 10,
  “king” => 10,
  “ace” => 11
  }

  cards.each do |card|
    score_accumulator += card_values[card]
  end
  return score_accumulator
end

def run_game
  hand = []
  while true do
    if move == “hit”
    hand.push(random_card)
    puts “Score so far: #{score(hand)}”
    elsif move == “stick”
    break
    end
  end
  if score(hand) <= 21
  puts “You scored: #{score(hand)}”
  else
  puts “You busted with: #{score(hand)}”
  end
end