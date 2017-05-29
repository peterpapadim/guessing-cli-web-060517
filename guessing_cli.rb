def guess_prompt
  puts "Guess a number between 1 and 6. "
end

def wrong(computuer_num)
  puts "The computer guessed #{computuer_num}."
end

def right
  puts "You guessed the correct number!"
end

def exit_prog
  puts "Goodbye!"
end

def run_guessing_game
  guess_prompt
  response = gets.chomp
  until response == "exit"
    comp_num = rand(1..6)
    right if response.to_i == comp_num
    wrong(comp_num) if response.to_i != comp_num
    guess_prompt
    response = gets.chomp
  end
  exit_prog
end
