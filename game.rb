require './player.rb'
require './question.rb'

class Game 
  def initialize()
  end

  def start()
    p1 = Player.new(1)
    p2 = Player.new(2)

    currentPlayer = [p1,p2]
    answer = 0;
    while(p1.lives > 0 && p2.lives > 0) #player 1 or 2 not dead
      puts "----- NEW TURN -----"

      #generate question
      q = Question.new(rand(1..10), rand(1..10))

      #get answer
      q.ask(currentPlayer[0].player)
      #check results
      answer = gets.chomp
      if q.check(answer.to_i)
        puts "Yes! You are correct"
      else
        # if wrong lose  1hp
        puts "Seriously? No!"
        currentPlayer[0].lives -= 1
      end
      puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
      temp = currentPlayer.shift
      currentPlayer.push(temp)
    end
    puts "Player #{p1.lives > 0 ? p1.player : p2.player} wins with a score of #{p1.lives > 0 ? p1.lives : p2.lives}/3"
    puts "----- Game Over -----"
  end
end

g = Game.new()
g.start