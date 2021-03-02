require "./Questions"
require "./Players"

puts "Welcome to the game, players!"
puts "Time to let us know what to call you.."
puts "Player 1, please enter your name:"

name1 = gets.chomp

puts "Player 2, please enter your name:"

name2 = gets.chomp

puts "Thank you"

player1 = Players.new(name1)
player2 = Players.new(name2)

# Track turns of players counter
counter = 0

while (player1.haveLives? && player2.haveLives?) do
  # setting player turn differentiator
  player_turn = counter == 0 ? player1 : player2


  puts "----- NEW TURN -----"

  question = Questions.new

  new_question = question.question
  puts "#{player_turn.name}: #{question.question}?"

  player_answer = gets.chomp

  if (player_answer.to_i == question.answer)
    puts "#{player_turn.name}: YES! You are correct."
  else 
    puts "#{player_turn.name}: Seriously? No!"
    player_turn.lives -= 1
  end

  # setting counter to modulo 2, so the count is always either 0 or 1
  counter = (counter += 1) % 2

  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
end

if (player1.lives == 0)
  puts "Player 2, #{player2.name}, wins with a score of #{player2.lives}/3"
  puts "----- GAME OVER -----"

else 
  puts "Player 1, #{player1.name}, wins with a score of #{player1.lives}/3"
  puts "----- GAME OVER -----" 
end

puts "Good bye!"