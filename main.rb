# main.rb
require './player.rb'
require './game.rb'

def play
  turn = 1
  player1 = Player.new('Player 1')
  player2 = Player.new('Player 2')
  while player1.lives > 0 && player2.lives > 0 do
    game = Game.new 
    num1 = game.number
    num2 = game.number
    player = turn % 2 == 0 ? player2 : player1

    question = game.question(num1 , num2)
    puts "#{player.name} #{question[0]}"
    answer = gets.chomp.to_i

    if answer == question[1]
      puts "YES! You are correct."
    else 
      puts "Seriously? Nope."
      player.point
    end
    puts "P1: #{player1.lives}/3  vs.  P2: #{player2.lives}/3"
    puts (player1.lives != 0 && player2.lives != 0) ? " \n -----  NEW TURN  ----- \n " :  nil
    turn += 1
    
  end
  winner = player1.lives == 0 ? player2 : player1
  puts "#{winner.name} wins with a score of #{winner.lives}/3"
  puts "-----  GAME OVER  -----"
end

play

