# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: die name, sides
# Output: for sides: the sides of the instanced die
# for roll: a random element from the array of sides
# Steps:
=begin
METHOD sides
puts die name and sides passed from init
END

METHOD ROLL
choose random element from array
puts "Your roll returned _____"
END

=end

# 3. Initial Solution

class Die
  def initialize(name, sides)
    @name = name
    @sides = sides
    if @sides == nil
    	raise ArgumentError.new("Name some sides!")
    end
  end
  def sides
    puts "#{@name} has #{@sides} as its sides"
    return "#{@name} has #{@sides} sides"
  end
  
  def roll
    # code goes here
    toss = @sides.sample
    puts "Your roll resulted in #{toss}"
    return "Your roll resulted in #{toss}"
  end
end


# 4. Refactored Solution
=begin
  
I don't know if there is a way to refactor my code at all!
  
=end




# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new("die", ['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides === "die has ['A', 'B', 'C', 'D', 'E', 'F'] sides"

big_die = Die.new("big_die", ['whoa', 'big', 'impressive', 'shocking', 'what', 'wooooo', 'woof'])
p big_die.sides === "big_die has ['whoa', 'big', 'impressive', 'shocking', 'what', 'wooooo', 'woof'] sides"

# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
The only thing I tried to do here was make the class more involving. It doesn't pass all of the rspec tests, but it is more interactive for the user!

What questions did you have while coding? What resources did you find to help you answer them?
I just needed to remember that sample selects a random element from an array. How do I represent that with driver code?

How confident are you with each of the learning objectives?
Unless I completed this completely poorly, I am very confident in the learning objectives!

I enjoyed this challenge - I used to play dice games an awful lot. I enjoy being able to apply coding to every day things that I enjoy!

 
=end