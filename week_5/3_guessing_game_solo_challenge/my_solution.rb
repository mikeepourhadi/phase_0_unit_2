# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself

# 2. Pseudocode

# Input: On initialization: the an integer
# on guess, integer
# Output: when guess is passed, the symbols :low, :high or :correct
# 
# when solved? is called, either true or false
# Steps:

=begin 

initialize GuessingGame with integer answer
set the instance variable answer = to the integer passed

METHOD guess takes integer as argument
  IF arguement is less than the answer instance variable
    return :low
  ELSIF
    return :high
  ELSE
    return :correct
  ENDIF
END method def

METHOD solved?
  IF instance guess is equal to symbol :correct
    return true
  ELSE
    return false
  ENDIF
END method def
=end

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
   @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if guess < @answer
  		@guess = :low
  	elsif guess > @answer 
  		@guess = :high
  	else
  		@guess = :correct
  	end
  end

  def solved?
  	if @guess == :correct  
  		true
  	else 
  		false
  	end
  end

end

bleh = GuessingGame.new(50)
bleh.guess(50)
bleh.solved?
 


# 4. Refactored Solution


class GuessingGame
  def initialize(answer)
   @answer = answer
  end

  def guess(guess)
    @guess = guess
    case
      when guess < @answer then @guess = :low
      when guess > @answer then @guess = :high
      else
      @guess = :correct
    end
  end

  def solved?
    case @guess 
      when == :correct then true
      else 
        false
      end
  end

end



# 1. DRIVER TESTS GO BELOW THIS LINE

bleh = GuessingGame.new(50)
p bleh.guess(50) === :correct
p bleh.solved? === true
 
one_more = GuessingGame.new(100)
p one_more.guess(20) === :low
p one_more.solved? === false


# 5. Reflection 
=begin
I had some issues with this challenge. I know instance variables are available throughout the class, I just needed to remind myself of that.
It took me a little while to process how to link the various methods together and have them chain down to solved?.

This challenge makes me want to create large arbitrary classes and just play with them for a while. There is a lot of fun to be had, but only when I can attack
this problem in any way that I want to.

I'm excited to move forward with classes and I hope next week has some more interactions with them. 

I didn't find anything tedious, it seemed that all of the objectives for this challenge seemed to be pointed and relevant. 

=end
