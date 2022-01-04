require "./player.rb"
require "./question.rb"
class Game 
  def initialize 
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end 

  def start_game
    current_player = @player1
     #create while loop 
    while (@player1.is_alive && @player2.is_alive) do
     # question logic 
    question = Question.new 
    question.ask_question(current_player)
    if current_player == @player1 
      current_player = @player2
    else
      current_player = @player1
    end 
    if @player1.is_alive && @player2.is_alive
    puts "----- NEW TURN -----"
    end
    
    end
    if (@player1.lives == 0)
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      puts '----- GAME OVER -----'
      puts 'Good bye!'
    else
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      puts '----- GAME OVER -----'
      puts 'Good bye!' 
    end 

  end 

  
end 