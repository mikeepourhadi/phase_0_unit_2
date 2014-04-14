# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a new die object, with number of sides
# Output: for sides: number of sides the instance of die has
# 		  for roll: returns a random number between 1 and the amount of sides of the instaced die
# Steps:

=begin 
initialize sides, set equal to argument passed

def sides:
	RETURN # of sides for instantiated die

def roll
	return random number between one and number of sides for instantiated die

=end 

# 3. Initial Solution

class Die
  def initialize(name, sides)
    @name = name
    @sides = sides
    if @sides <= 0
      raise ArgumentError.new("Have you ever seen a die with no sides? Or worse, negative sides? No.")
    elsif @sides.class.to_s == "String"
      raise ArgumentError.new("Only integers, please.")
    end
  end

  def sides
    # code goes here
    puts "#{@name} has #{@sides} sides"
    return "#{@name} has #{@sides} sides"
  end
  
  def roll
    # code goes here
    toss = (1 + rand(@sides))
    puts "Your roll resulted in #{toss}"
    return "Your roll resulted in #{toss}"
  end
end


die = Die.new("die", 6)
die.sides
die.roll

what_is_this_DnD = Die.new("Dungeons and Dragons Die", 150)
what_is_this_DnD.sides
what_is_this_DnD.roll
# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

p Die.is_a? Class === true
p what_is_this_DnD.sides === "Dungeons and Dragons Die has 150 sides"
p die.sides === "die has 6 sides"



# 5. Reflection 
=begin

What parts of your strategy worked? What problems did you face?
This was my first true interactions with classes, and I enjoyed it. It is a freeing feeling, and it feels like I can make almost anything I want with classes. 
I only faced a few issues - ArgumentError syntax, for one.

What questions did you have while coding? What resources did you find to help you answer them?
The only questions I had were 'how can I make this more fun to interact with?' I tried to make it more entertaining for the user to interact with,
which, I admit, caused my code to fail some rspec code.

How confident are you with each of the learning objectives?
I am confident with the objectives, and I hope to have additional practice. Classes are really interesting and I feel that I've only just
scratched the surface.

Which parts of the challenge did you enjoy?
I enjoyed writing a real-world class. What do I mean? I like dice, I played many games with many dice. It's kind of awesome to programmatically
  roll dice.
  
=end