# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Jonathan Howden
# 2) Mikee Pourhadi

# input: number of people (integer) 
# favorite bakery dessert (string)

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # how many people each item can feed
  pie_qty = 0 
  cake_qty = 0 
  cookie_qty = 0 
   
  has_fave = false 

  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
    end
  end
  
  if has_fave == false 
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list[fav_food]# without [0], returns array 
    if num_of_people % fav_food_qty == 0 # if no remainder
      num_of_food = num_of_people / fav_food_qty 
      return "You need to make #{num_of_food} #{fav_food}(s)."
    else 
      
     # iterate through my_list hash
     # store values for num_of_people / my_list[key] in variables
     # update num_of_people with remainder 
     # string interpolation
     array = []
     my_list.each do |baked_good, people|
      if num_of_people / my_list[baked_good] > 0
        array << num_of_people / my_list[baked_good]
        num_of_people = num_of_people % my_list[baked_good]
      end
      print array
    end
=begin
      while num_of_people > 0 # if num_of_people is 7 
        if num_of_people / my_list["pie"] > 0 # 7 / 8 = 0, so skip this step
          pie_qty = num_of_people / my_list["pie"]
          num_of_people = num_of_people % my_list["pie"]
        elsif num_of_people / my_list["cake"] > 0 # 7 / 6 > 0, execute block
          cake_qty = num_of_people / my_list["cake"] # 7 / 6 = 1.16 (without using a float, ruby uses whole numbers so ignore dec), set cake_qty to 1
          num_of_people = num_of_people % my_list["cake"] # set num_of_people to 1, since % > 0
        else
          cookie_qty = num_of_people 
          num_of_people = 0
        end
      end
=end
        return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)." 

p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 
 #REFLECTION
=begin
 
 I DIDN'T FINISH THIS CHALLENGE. I can write a way to look through the hash and get rid of all that repeated code. I know I can, I just didn't
 budget enough time this week to do it.

Most of the issues I had this week came from poor time managment and I hope to adjust that in the coming weeks.

This challenge really opened my eyes up a bit. I struggled quite a lot, and I was very uncomfortable while walking through this. Without a doubt, I should spend more time
playing with hashes, as I feel like they gave me the biggest issues here.

I need to remember that hashes and arrays are not all that different, and it is as easy to access data in each.

My one issue is storing data dynamically. How can I make one .each loop store data? Should I push it into an array? A hash? How to do I do some interpolation afterwards to access that specific data?

Those were the questions I asked myself, and I know if I spend more time with this I can do it.




 	
=end