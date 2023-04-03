class Question 
  attr_accessor :level

def initialize
  @level = 1
end

def increase_difficulty
  if @ level < 3
    @level += 1
    else
      puts "you are already on the hardest difficulty"
    end 
  end

def decrease_difficulty
  if @ level > 1
  @level -= 1
  else
    puts "you are already on the easiest difficulty"
  end 
end

end