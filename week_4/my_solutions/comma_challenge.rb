

# U2.W4: comma_challenge


# I worked on this challenge by myself.
# 2. Pseudocode

# Input: integer
# Output: integer with comma separation
# Steps: 

=begin 

turn integer into string
reverse string
chunk string into 3s, array
reverse array
join array (",")
=end


# 3. Initial Solution
=begin
def separate_comma(integer)
	numStr = integer.reverse.each_slice(3).join(",")
	numStr
end

THIS DIDN'T WORK, obviously. It is where I left off the last time I took to this problem.

separate_comma(1000000)
=end

# 4. Refactored Solution

def separate_comma(integer)
	# create blank array
	numArr = []
	# convert integer to string, reverse, split into individual characters, slice array by 3s
	# push each 3 into blank array, joining them in the process
	integer.to_s.reverse.split("").each_slice(3) {|x| numArr << x.join("")}
    # reverse numArray and join each chunk to_s with a comma
    numArr.reverse.join(",")
end

separate_comma(1000000)


# 5. Reflection 

=begin
	
Words can barely describe how happy I am that I figured this challenge out, by myself without
scouring google for examples. I only used methods that I knew well, and it turns out that as it stands,
I am able to do this challenge. It took me a number of tries, and a lot of frustration, but I just kept throwing 
ideas at it, and it worked. Honestly, I'm damn thrilled. This was the Socrates problem during phase 0 prep that I couldn't finish
AND NOW LOOK. WHAT NOW, SOCRATES?

Did I enjoy this? Yes I did. It was hard for me, and it was cool to have to think to try and get it to work. I like that
a lot. Granted, in the moment, I'm fumingly pissed. But I enjoy the struggle, and when it works... Oh. Oh when it works the
world is a great place. 

New tricks? Turning an integer to a string. I almost always try .to_a, it was interesting to send it to a string first (as you have to, right?).
	
end
