# will be called after every turn to show the score and whos turn it is or if the game is over 
class Game
  # able to read and write all information 
  attr_accessor :score, :new_turn, :answer, :game_over, :current_player

# initialize the players who will take part in the game 
  def initialize
    puts "Please enter player 1's username: "
    name1 = gets.chomp
    @player1 = Player.new(name1)
    puts "Please enter player 2's username: "
    name2 = gets.chomp
    @player2 = Player.new(name2)
    @current_player = @player1
    
    new_turn
  end

  def switch_turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end 

  # will see if each player still has a life left and if they do will continue on 
  def new_turn
    if @player1.lives == 0 || @player2.lives == 0
      return game_over
    end 
    switch_turn

   puts  "P1: #{@player1.score} vs P2: #{@player2.score}"
   new_turn
   puts  "------ NEW TURN ------"

  end

  # if one player is out of lives will then annonce the winner with the highest score 
  def game_over
    if @player1.score > @player2.score 
      puts "Player 1 wins with a score of #{@player1.score}"
    else 
      puts "Player 2 wins with a score of #{@player2.score}"
    end
    puts  "------ GAME OVER ------"
    puts  "GOOD BYE!"
  end

end 

