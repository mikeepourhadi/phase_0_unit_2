# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
 	 raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
	assert { name == "bettysue"}
	assert called
		block passed with assert = true
		back to method
			if yield was false
			raise "Assertion Failed!"
			ENDIF
	END
end
=end
# 3. Copy your selected challenge here

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
    @guess == :correct ? true : false 
  end

end



# 1. DRIVER TESTS GO BELOW THIS LINE

bleh = GuessingGame.new(50)
p bleh.guess(50) === :correct
p bleh.solved? === true
 
one_more = GuessingGame.new(100)
p one_more.guess(20) === :low
p one_more.solved? === false





# 4. Convert your driver test code from that challenge into Assert Statements

assert {bleh.solved? == true}
assert {bleh.guess(50) == :correct}

assert {one_more.guess(20) == :low}
assert {one_more.solved? == false}
# 5. Reflection


=begin
I felt very good as I worked on this challenge. Classes are fairly straight forward (at least now), and extremely helpful to use. 

I enjoy the assert method. It took me a second to understand exactly what it meant, but after utilizing it, it seems to just make sense. Knowing the line of the error and why a test doesn't pass it extremely helpful.

Also, I appreciate that when one assertion fails, the program ends. It forces me to focus on each challenge, and not just skip around fixing random ones. It adds a new feeling to driver code, and in that way a developer can 
check code systematically, in order.

The only difficulty I had was understanding assert initially. It turns out, all I had to do was play around with it. 



=end