# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) # create a new method definition
    alphabet = ('a'..'z').to_a # creates the variable alphabet and sets it equal to an array containing all letters of the alphabet
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # creates cipher hash and populates it with keys that equal the letters of the alphabet and
    # values that equal letters of the alphabet offset by 4 (so a would == e)
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # creates variable spaces and populates it with an array containing various symbals
    
    original_sentence = sentence.downcase # sets original_sentence equal to lowercased argument being passed into the method
    encoded_sentence = [] # sets encoded sentence equal to empty array
    original_sentence.each_char do |element| # iterates through original_sentence string (WHICH I NEVER KNEW EXISTED, very handy)
      if cipher.include?(element) # does the element currently targeted contain a character within the cipher? 
        encoded_sentence << cipher[element] # if true, push the matching key from the cipher into ecoded sentence array
      elsif element == ' ' # OR if the currently targeted element matches an empty space = true
        encoded_sentence << spaces.sample # push a randomly selected element from spaces into encoded sentence array
      else # if no conditions met
        encoded_sentence << element # push the currently targeted element into encoded sentence
      end # end the if
     end #end the .each
    
    return encoded_sentence.join # finish the method by outputting encoded sentence as a string string
end # end method


# Questions:
# 1. What is the .to_a method doing?
# .to_a created an array containing all the letters between a-z inclusive
# 2. How does the rotate method work? What does it work on?
#  the rotate method removes the first element in an array and places it on the end of the array, thus changing the order. Rotate works on arrays.
# 3. What is `each_char` doing?
# .each_char iterates through each character in a passed string
# 4. What does `sample` do?
# picks a random element within an array
# 5. Are there any other methods you want to understand better?
# just more practice with hashes
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# I like our refactored solution, though that could just be because we wrote it. I like the use of each_char here
# 7. Is this good code? What makes it good? What makes it bad?
# I would say it's good code - it is concise, the variables are well named and make sense. 


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I didn't face many problems here. I enjoy commenting each line of code!

What questions did you have while coding? What resources did you find to help you answer them?
I didn't know what each_char did, so I had to look that up! I just used google.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I still need to work on using hashes. I find myself to be fairly proficient with arrays, but not hashes quite yet.

How confident are you with each of the learning objectives?
The only objective that I am not hugely confident in is best practices for code - I like to think that I am learning it fairly well, but I don't know!
Hopefully the more I work at it, the more I will understand it!

Which parts of the challenge did you enjoy?
I enjoy commenting each line, I feel that I learn well when I do that. And it helps me understand a method that I wouldn't otherwise understand.
  Code is just a step-by-step, and honestly, when broken down, anything can be understood.

=end