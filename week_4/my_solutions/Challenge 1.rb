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

# Split each array into pieces of four (.each_slice(4))

# IF group with less than 3 members 

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
  
  print "THE GROUPS FOR UNIT ONE ARE: #{unit_one}"
  print "THE GROUPS FOR UNIT ONE ARE: #{unit_two}"
  print "THE GROUPS FOR UNIT ONE ARE: #{unit_three}"
end

groupSlice(["Keenan Turner", "Tyler Keating", "Catherine Farkas", "Kim Girard", "Zac Mitton", "Caleb Rugg", "Daniel Yoachim", "Scott Silveus", "Travis Hernandez", "Lana Rakhman", "Mikee Pourhadi", "Brendan Brown", "Natalie McCroy", "Ahmed Al-Bahar", "Carl Krause", "Rick Dsida", "Ann Lin", "Peter Debelak", "Mike Daugherty", "Xander Glassman", "Natalie Frecka"])


# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection