# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin
method initialize with array flavors
	intstance flavors = flavors
end

method count 
	length of flavors array
end

method remove(pez)
	delete pez from @flavors array
end

method add(pez)
	push pez into @flavors array
end

method view
	write @flavors array 
end

=end


# 3. Initial Solution

class PezDispenser
 
	def initialize(flavors)
		@flavors = flavors
	end

	def pez_count
		@flavors.length
	end

	def get_pez
		@flavors.shift
	end

	def add_pez(pez)
		@flavors << pez
	end

	def see_all_pez
		@flavors
	end
# your code here!
 
end
 


# 4. Refactored Solution

#I don't think there is a more effective way to lay out my solution




# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise ArgumentError.new("Assertion failed!") unless yield
end


flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"


# 5. Reflection 

=begin
What parts of your strategy worked? What problems did you face?
I just followed the directions on the readme and the order that was recommended. Pseudocoding was very helpful, considering how many methods were required to make the class function.

My biggest questions were in how much I had to flesh out this challenge. I wrote my code to satisfy the driver code, but I feel that I ended up restricting my program. 

I would very much enjoy writing a pez dispenser class that produces those puts statements without calling them outside of the class itself. For this challenge, though, I just wrote the code that
satisfied the drivers.

I did not write assert statements for this challenge: I was unsure what to write assert statements for. 

=end