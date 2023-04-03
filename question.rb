class Question 
  attr_accessor :level, :random_question

def initialize
  @level = 1
end

def increase_difficulty
  if @level < 3
    @level += 1
    else
      puts "you are already on the hardest difficulty"
    end 
  end

def decrease_difficulty
  if @level > 1
  @level -= 1
  else
    puts "you are already on the easiest difficulty"
  end 
end

def random_question(current_player)
  @current_player = current_player
  @number1 = rand(10)
  @number2 = rand(10)
  if @level == 1 
    answer = @number1 + @number2
    puts "What is #{@number1} + #{@number2}"
    user_answer = gets.chomp.to_i
    puts answer
    puts user_answer
    puts (answer == user_answer)
    if answer == user_answer
      @current_player.increase_score
    else 
      @current_player.lose_life
    end
  elsif @level == 2
    answer = @number1 * @number2
    puts "What is #{@number1} * #{@number2}"
    user_answer = gets.chomp.to_i
    if answer == user_answer
      @current_player.increase_score
    else 
      @current_player.lose_life
    end
  else 
    answer = @number1 / @number2
    puts "What is #{@number1} / #{@number2}"
    user_answer = gets.chomp.to_i
    if answer == user_answer
      @current_player.increase_score
    else 
      @current_player.lose_life
    end
  end 
end
end 