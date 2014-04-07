# U2.W4: Title here


# I worked on this challenge by myself.

# Driver Code



# 2. Pseudocode

# Input: Array of names
# Output: Names broken up into individual groups of four, 3 different times
# Steps: 

# unit_one = []
# unit_two = []
# unit_three = []

#   shuffle the array 
#   push into unit_one

#   shuffle the array 
#   push into unit_two

#   shuffle the array
#   push into unit_three

#   unit_one.each_slice(4)
#   unit_one[0] << unit_one.pop

#   unit_two.each_slice(4)
#   unit_two[0] << unit_two.pop

#   unit_three.each_slice(4)
#   unit_three[0] << unit_three.pop


# END RESULT: 3 variables with mixed names from original array

# 3. Initial Solution
def groupSlice(fireflies)
  
  unit_one = fireflies.shuffle.each_slice(4).to_a
  unit_one[0] << unit_one.pop
  unit_one[0].flatten!

  unit_two = fireflies.shuffle.each_slice(4).to_a
  unit_two[0] << unit_two.pop
  unit_two[0].flatten!
 
  unit_three = fireflies.shuffle.each_slice(4).to_a
  unit_three[0] << unit_three.pop
  unit_three[0].flatten!
end
  
  
# 4. Refactored Solution

def groupSlice(fireflies)

unit_num = 0
  all_units = []
  while unit_num < 3
    temp_array = fireflies.shuffle.each_slice(4).to_a
    temp_array[0] << temp_array.pop
    temp_array[0].flatten!
    all_units << temp_array
    puts "UNIT #{unit_num + 1} : #{all_units[unit_num]}"
    temp_array.clear
    unit_num += 1
  end
end

groupSlice(["Keenan Turner", "Tyler Keating", "Catherine Farkas", "Kim Girard", "Zac Mitton", "Caleb Rugg", "Daniel Yoachim", "Scott Silveus", "Travis Hernandez", "Lana Rakhman", "Mikee Pourhadi", "Brendan Brown", "Natalie McCroy", "Ahmed Al-Bahar", "Carl Krause", "Rick Dsida", "Ann Lin", "Peter Debelak", "Mike Daugherty", "Xander Glassman", "Natalie Frecka"])




# 1. DRIVER TESTS GO BELOW THIS LINE





# 5. Reflection

# I loved this challenge. Initially, I had not a single clue what to do - at all. I created everything literally, and it was stupid. I left that code commented.
# I spent a lot of time staring at it, and eventually thought to use a while loop. It still uses an array, and I feel like a hash would be more suited for this. Unfortunately, I can't figure
# out how to properly push all the details into the hash. 

# I was frustrated initially because I had no clue how to do this challenge - it was super open ended and I just sat there, weeping. In my chair. Just sitting there, weeping. 
# Eventually, I figured out how to reproduce my literals through an algorithm and I'm very happy with it. 








