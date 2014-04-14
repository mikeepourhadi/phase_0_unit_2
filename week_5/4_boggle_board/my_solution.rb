# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

=begin 
METHOD create_word which takes an array of arrays and an unknown number of coordinates 
	coord.map {find the index of the first coordinate within board(the array to target), 
			   then use the index of the last coordinate to find the corresponding character within the targeted array}.
	join the result of map into a string
END

=end 

# Initial Solution
 def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?

# put these two together and it spells Code Rad which is close to Code Red... which is delicious


# Refactored Solution
=begin
I'm not sure if there is a way to refactor this, it is readable and succinct as it is.
=end
# DRIVER TESTS GO BELOW THIS LINE
p create_word(boggle_board, [0,0], [0,1], [2,0], [0, 2], [3, 2]) === "break"
p create_word(boggle_board, [1,0], [2,1], [0,3]) === "ice"
p create_word(boggle_board, [1,3], [0,3], [0,2], [2,3]) === "tear"
# Reflection 



#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
=begin
METHOD get_row(board, row)
	find index (row) on passed board
END METHOD DEF
=end
# Initial Solution
def get_row(board, row)
	board[row]
end


# Refactored Solution

#I don't think there is a way to make my code any more succinct

# DRIVER TESTS GO BELOW THIS LINE
p get_row(boggle_board, 1) === ["i", "o", "d", "t"]
p get_row(boggle_board, 0) === ["b", "r", "a", "e"]
p get_row(boggle_board, 2) === ["e", "c", "l", "r"]
# Reflection 
=begin
This was a very simple step, and I didn't struggle with anything. Indexing will always be interesting.
=end

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
=begin
METHOD get_col(board, col)
	find index (col) on first array, find index (col) on second array, continue for all arrays
END METHOD DEF
=end

# Initial Solution
def get_col(board, col)
	board.map{|row| row[col]}  
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
p get_col(boggle_board, 1) === ["r", "o", "c", "a"]
p get_col(boggle_board, 3) === ["e", "t", "r", "e"]
p get_col(boggle_board, 2) === ["a", "d", "l", "k"]


# Reflection 
=begin
This took me a little bit. Nesting always takes me another minute of thought. In the end, I just wrote it out and it make total sense.

Other than figuring out how to access a verticle straight line (from a data structure that is essentially structureless), I didn't find anything tedious,
nor anything particularly trying.

I enjoyed that this seemed to be about teaching the step-by-step process. Each step is simple, but it all leads to a pretty excellent conclusion.

=end