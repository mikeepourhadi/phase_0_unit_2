# Credit Card challenge

#I worked on this solution with Tyler Keating


#INITIAL - THIS WAS MY SOLUTION
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


#REFACTORED - THIS WAS TYLER'S SOLUTION THAT WE DISCUSSED
class CreditCard
  def initialize (num)
    num = num.to_s.split('')      # converts the card number into an array of strings that can find the length of the array and help with factoring down the method
    raise ArgumentError.new("Invalid Credit Input") if num.length != 16
    @c_c_num = num
  end


  def check_card
    digits = ''
    @c_c_num.reverse.each_with_index do |d,i|
      if i%2 == 0       # a 16 digit number's last index will equal 0 
        digits += d 
      else              # this accesses every other in the string based on index beginning with the second to last digit because the method was reversed and it makes no mathmatical difference which order the numbers are factored in for this case
        digits += (d.to_i*2).to_s     #by multiplying the numbers in () as integers and then converting them back in strings the digits variable can later be split into an array solving the factor problem of breaking apart double digits
      end
    end
    digits.split('').inject(0){|sum,d| sum+d.to_i}%10 == 0      #the final modulos test makes the digits string an array and then the inject(0) will create the sum of all the split integers.  Setting this to %10 == 0 will return true if the card is valid else false.
  end
end

def assert
	raise "Assertion Failed!" unless yield
end


card = CreditCard.new(1111111111111111)

assert { CreditCard.instance_method(:initialize).arity == 1 }    
assert { CreditCard.instance_method(:check_card).arity == 0 }   
assert { card.check_card == true  if (card = CreditCard.new(4408041234567893))}      
assert { card.check_card == false if (card = CreditCard.new(4408041234567892))}     


=begin
We used Tyler's initial solution. I felt that his code was originally more interesting and functional than mine. After refactoring, I think I was right. 
His code was more succint.

Tyler had the idea to use each_with_index which I did not know existed. My initial code used a strange 8.times loop, and a patchwork index. Each_with_index solves that issue.

Otherwise, a lot of our code was fairly similar and this challenge passed fairly quickly. 

Tyler's code uses a few different methods that mine didn't. For instance, he did a lot of the changing to string and array in the first initialize method, which I did not. Also: my check_card method was the last method I implemented, while Tyler made check card much more substantial. I thought his execution made significantly more sense than mine.
=end

