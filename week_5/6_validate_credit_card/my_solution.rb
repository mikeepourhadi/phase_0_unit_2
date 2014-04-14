# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: 16 digits
# Output: a boolean, true or false
# Steps: staring from second to last digit, double every other digit until the first
# Break apart digits that have a length > 1
# Sum all untouched digits and doubled digits 
# if total is multiple of 10, true, else false

=begin

METHOD reverse and multiply
	number to string, split to array
	reverse
	iterate through the array by 2s 
	double those digits
	if any digits > 10, 
		.to_s.split("").map{|x| x.to_i}.inject(:+)
	end
end

METHOD Summarize
sum all elements in array
end

method check_card
if sum is not evenly divisible by 10, return false, else true

=end


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(number)
		@number = number
		if @number.to_s.split("").length != 16
			raise ArgumentError.new("Please input valid number")
		end
	end

	def r_and_m
		@number = @number.to_s.split("").reverse.map{|x| x.to_i} # split number, reverse and set all to integers
		index = 1 
	
		8.times do # since there are only 16 digits
    		@number[index] = @number[index] * 2 # multiply every second digit by 2
    		if @number[index] >= 10 # if any number is greater than 10, split number and add its parts
    			@number[index] = @number[index].to_s.split("").map{|x| x.to_i}.inject(:+)
    		end
    		index+=2
		end
		@number
	end


	def summation
		@number = @number.inject(:+)
	end


	def check_card
		@number % 10 == 0? true : false
	end
end


# 4. Refactored Solution

# There is certainly a better way to write the above code. Unfortunately, due to time constraints I am unable to refactor at this time. I plan
# to continue working on a few of these assignments in the coming week.

# 1. DRIVER TESTS GO BELOW THIS LINE
card_one = CreditCard.new(4408041234567893)
card_one.r_and_m
card_one.summation

p card_one.check_card === true

card_two = CreditCard.new(4408041234567892)
card_two.r_and_m
card_two.summation

p card_two.check_card === false

#should raise argument error, it does
card_three = CreditCard.new(11111111111111112) 

# 5. Reflection 
=begin
This was a difficult challenge for me, and unfortunately I didn't budget enough time to refactor it.

On the other hand, I am very happy that I ended up figuring it out. It seems like a complex problem, but as I am learning more and more, everything
is just a combination of simple steps that can be broken down. 	

I wish I had paired with someone for this challenge, as I feel that I would have learned from another person more easily than I would have learned 
this myself. 

I had a significant amount of trouble with accessing every other character in an array. My method is the strongest definition of patchwork
that I have ever encountered. Yes, it works, and yes I understand why. But it looks like an utter mess and truthfully, I am somewhat ashamed of being
unable to refactor it in time.

I have to be completely honest. As the weeks pass, I am becoming increasingly worried that I am not cut out for Dev Bootcamp. 
	
=end





