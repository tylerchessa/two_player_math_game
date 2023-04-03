# initialize the players of the game 
class Player
  # able to read and write lives and score every turn 
attr_accessor :lives, :score, :name

# set there lives to 3 and there score to 0
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
    puts "#{@name} has #{@lives} lives and a score of #{@score}"
  end

# increments the player's score by the given amount
  def increase_score
    @score += 1
  end

# decrements the player's lives by 1
  def lose_life
    @lives -= 1
  end
  
end