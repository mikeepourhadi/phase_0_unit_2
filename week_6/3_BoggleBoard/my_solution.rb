# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with: Peter Debalek


# 2. Pseudocode

# Peter and I did not write pseudocode



# 3. Initial Solution

class BoggleBoard
  attr_reader :board
  
 	def initialize(board)
 		@board = board
 	end

	def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last] }.join("")
 	end
 
	def get_row(row)
		@board[row]
	end

	def get_col(col)
		@board.map { |row| row[col] }  
 	end
 	
 	def get_diagonal(start, finish)
 	  diag = []
 	  if start[0] > finish[0] && start[1] > finish[1]
 	    while start[0] >= finish[0]
 	      diag << @board[start.first][start.last]
 	      start[0]-=1
 	      start[1]-=1
 	    end
 	  elsif start[0] < finish[0] && start[1] < finish[1]
 	    while start[0] <= finish[0]
 	      diag << @board[start.first][start.last]
 	      start[0]+=1
 	      start[1]+=1
 	    end
 	  elsif start[0] < finish[0] && start[1] > finish[1]
 	    while start[0] <= finish[0]
 	      diag << @board[start.first][start.last]
 	      start[0]+=1
 	      start[1]-=1
 	    end
 	   elsif start[0] > finish[0] && start[1] < finish[1]
 	    while start[0] >= finish[0]
 	      diag << @board[start.first][start.last]
 	      start[0]-=1
 	      start[1]+=1
 	    end
 	  end
 	  diag
 	end

end

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
# 1. DRIVER TESTS GO BELOW THIS LINE
boggle_board = BoggleBoard.new(dice_grid)
def assert
  raise "Assertion failed!" unless yield
end

assert { boggle_board.get_row(1) === ["i", "o", "d", "t"] }
assert { boggle_board.get_row(2) === ["e", "c", "l", "r"] }
assert { boggle_board.get_row(3) === ["t", "a", "k", "e"] }

assert { boggle_board.get_col(1) === ["r", "o", "c", "a"] }
assert { boggle_board.get_col(3) === ["e", "t", "r", "e"] }
assert { boggle_board.get_col(2) === ["a", "d", "l", "k"] }

assert { boggle_board.create_word([1,3], [0,3], [0,2], [2,3]) === "tear" }
assert { boggle_board.create_word([0,0], [0,1], [2,0], [0, 2], [3, 2]) === "break" }
assert { boggle_board.create_word([1,0], [2,1], [0,3]) === "ice" }

assert { boggle_board.board[3][2] === "k" }

assert { boggle_board.get_diagonal([3,3],[0,0]) === ["e", "l", "o", "b"] }
assert { boggle_board.get_diagonal([0,0],[3,3]) === ["b", "o", "l", "e"] }
assert { boggle_board.get_diagonal([0,3],[3,0]) === ["e", "d", "c", "t"] }
assert { boggle_board.get_diagonal([2,0],[0,2]) === ["e", "o", "a"] }

# REFLECTION
=begin
What parts of your strategy worked? What problems did you face?
Working with Peter was great. The only difficulty we had was working out the if statement. In the end, what worked best for us was just jumping in and attempting to solve it by trying 
different code and surrepetitiously running it through irb.

What questions did you have while coding? What resources did you find to help you answer them?
My first question was how to increment an index within the arrays to end the while loop. In the end, we just used += and it worked.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I am having difficulty conceptualizing. Get diag was very difficult to me: Peter did most of the heavy lifting. For some reason, indexing was difficult for me. I knew we had to incrememnt or decrememnt,
but I didn't know how many different instances for it (like having a diagonal in any direction).

Did you learn any new skills or tricks?
I learned that I can reall increment or decrement any specific integer if I need to. Before for a while loop, I typically would use a counter variable. But now I know I can increment different objects without
busting up any specific code.

How confident are you with each of the learning objectives?
I'm not extremely confident with the BONUS section, but otherwise I feel fairly confident.

=end


