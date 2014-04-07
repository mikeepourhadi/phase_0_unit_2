# I worked on this challenge with Daniel Yoachim




def north_korean_cipher(coded_message)
    input = coded_message.downcase.split("") #split into an array ['a','b','c',...] in lower case
    decoded_sentence = []
    cipher = {"e" => "a",   # There's the rotate method, which could be used to automate the letter changes
        "f" => "b",   # The hash is readable, but longwinded. It's a very literal solution. It's not easilly changable
        "g" => "c",
        "h" => "d",
        "i" => "e",
        "j" => "f",
        "k" => "g",
        "l" => "h",
        "m" => "i",
        "n" => "j",
        "o" => "k",
        "p" => "l",
        "q" => "m",
        "r" => "n",
        "s" => "o",
        "t" => "p",
        "u" => "q",
        "v" => "r",
        "w" => "s",
        "x" => "t",
        "y" => "u",
        "z" => "v",
        "a" => "w",
        "b" => "x",
        "c" => "y",
        "d" => "z"}
    
    input.each do |x| # Do the loop for every element in the in put array
        found_match = false  # The boolean to set to true if the cipher replaces a letter or ' '
        cipher.each_key do |y| #Do loop for each key in the cipher hash.
            if x == y  #Check if the element in input matches a key in cipher
                puts "I am comparing x and y. X is #{x} and Y is #{y}."
                decoded_sentence << cipher[y] #put the cipher value into decoded_sentense array
                found_match = true #We found a match!
                break  # We've accounted for the element, so we break the loop and move to the next one
                elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #Check if element is one of these symbols
                decoded_sentence << " " # put ' ' into cipher
                found_match = true #We found a match!
                break #break loop
                elsif (0..9).to_a.include?(x) # makes an array of numbers 0-9, checks if x is one of them
                decoded_sentence << x #put element unchanged into decoded_sentence array
                found_match = true #We found a match!
                break #break loop
            end
        end
        if not found_match  # If we did not find a match.
            decoded_sentence << x # put element unchanged into decoded array
        end
    end
    decoded_sentence = decoded_sentence.join("") #combine all elements in decoded_sentence into string 'abcd'
    
    if decoded_sentence.match(/\d+/) #Check if one or more digit in a row is in decoded_sentence
        decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #Divide all numbers found by 100
    end
    return decoded_sentence #String of the decoded message
end



# Your Refactored Solution



def north_korean_cipher(coded_message)
    coded_array = coded_message.downcase.split("")
    decoded_sentence = []
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.rotate(4).zip(alphabet)]
    
    coded_array.each do |x|
        if cipher.include?(x)
            puts "I am comparing x and y. X is #{x} and Y is #{cipher[x]}."
            decoded_sentence << cipher[x]
            elsif ["@", "#", "$", "%", "^", "&", "*"].include?(x)
            decoded_sentence << " "
            else
            decoded_sentence << x
        end
    end
    decoded_sentence = decoded_sentence.join("")
    
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
    return decoded_sentence
end



# Driver Code
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"


# REFLECTION 
=begin 
This challenge was very difficult for me, and I wonder if I would have finished had I not paired with someone who had much more experience than me. Again, as has been my problem for much of this week,
I don't understand hash interactions all too fluently, though I hope to as I continue to put work into it. 

I didn't find much of this tedious other than completing the driver code, which was a bit of a copy and paste session. It made sense and I understood why it existed, but it was still somewhat strange. 

I had a few questions while coding, like how on earth we could make a cipher more easy to read, but my parter answered most of them and helped me understand what was going on and needed to be done. 

The original code was a bit of a nightmare, honestly. The first time I looked at it, I blanked out. found_match? Why does that little bit even exist? I had no idea. Nesting, returning, breaking, nesting. It was 
all very confusing initially. But I think I understand it now. 

I am not entirely confident in the objectives, and I need to spend more time with this challenge. Regrettably, I did not have a whole lot of time this week to work - I wish I did. And it worries me that I didn't,
and I worry that I might be falling behind. Thankfully, this coming week should provide me with plenty of time to fully immerse myself.


