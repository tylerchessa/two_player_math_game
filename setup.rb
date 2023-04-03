# initialize the players of the game 
class Player
  # able to read and write lives and score every turn 
attr_accessor :lives :score

# set there lives to 3 and there score to 0
  def initialize(lives, score)
    @lives = lives
    @score = score
  end
  
end

# will be called after every turn to show the score and whos turn it is or if the game is over 
class Intermision
  # able to read and write all information 
  attr_accessor :score :new_turn :answer :game_over :current_player

# initialize the players who will take part in the game 
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  # will contain who the current player is and will be switched after every turn 
  def current_player(player)
    @current_player = player
  end 

  # will see if each player still has a life left and if they do will continue on 
  def new_turn(player1, player2)
    if player1.lives == 0 || player2.lives == 0
      return game_over
    end 
    if current_player == player1
    current_player.player(player2) 
    elsif current_player == player2
      current_player.player(player1) 
    end 
    "P1: #{player1.score} vs P2: #{player2.score}"
    "------ NEW TURN ------"

  end

  # if one player is out of lives will then annonce the winner with the highest score 
  def game_over
      if player1.score > player2.score 
        "Player 1 wins with a score of #{player1.score}"
      end
    else player1.score < player2.score 
    "Player 2 wins with a score of #{player2.score}"
    "------ GAME OVER ------"
    "GOOD BYE!"
    end


end