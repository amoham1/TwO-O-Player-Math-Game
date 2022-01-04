class Question
  attr_accessor :num1, :num2, :answer
def initialize 
  @num1 = rand (0..20)
  @num2 = rand (0..20)
  @answer = @num1 + @num2
end 

def check_answer(player_guess)
player_guess == @answer
end 

def ask_question (player)
  puts "#{player.name}: What does #{num1} plus #{num2} equal?"
input = gets.chomp.to_i
if  check_answer(input) 
  puts "#{player.name}: YES! You are correct"
else
  player.lose_life
  puts "#{player.name}: Seriously? No!"
  puts "#{player.name}: #{player.lives}/3 live remaining"
end
end


end 