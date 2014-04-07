# U2.W4: Essay_cheat 


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: title, person, location, date, thesis, major_accomplishment, pronoun
# Output: a beautifully crafted essay
# Steps:

# IF pronoun is 'male', use 'he' in essay, 
# 	ELSE
# 	Use she

# if date < 1000 years
# use 'early era'
# ELSE 
# use 'late era'

# puts the title of the essay, and name of the important person
# puts Story about person being important in the location, the major accomplishment and why the location was benefitted from the important person
# puts conclusion paragraph
# puts author (me)


# 3. Initial Solution
def oh_crap_i_forgot(title, person, location, date, thesis, major_accomplishment, pronoun)
  pronoun = 'male' ? p_use = 'he' : p_use = 'she'
  date < 1000 ? e_or_l = 'early era' : e_or_l = 'late era'

  puts "#{title} : The Story of #{person}"
  puts " "
  puts "In #{e_or_l} #{location}, #{person} was a pretty big deal. #{thesis}. #{pronoun.capitalize} changed the very fabric of #{location} when #{pronoun} #{major_accomplishment}."
  puts " "
  puts "All in all, #{e_or_l} #{location} would not have been so successful without #{person}, nor would #{location} be the way it is today without those contributions."
  puts "By Mikee."
end




# 4. Refactored Solution

# I am not sure how I would refactor my solution, honestly. It seems that everything is as concise as it can be!






# 1. DRIVER TESTS GO BELOW THIS LINE

p oh_crap_i_forgot("The First Shogun", "Tokugawa Ieyasu", "Japan", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years", "created policies that united the people",   "male") == ("The First Shogun : The Story of Tokugawa Ieyasu
In late era Japan, Tokugawa Ieyasu was a pretty big deal. His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years. He changed the very fabric of Japan when he created policies that united the people.
All in all, late era Japan would not have been so successful without Tokugawa Ieyasu, nor would Japan be the way it is today without those contributions.
By Mikee.")

p oh_crap_i_forgot("The Legend of Zelda", "Link", "Hyrule", 600, "Link was the chosen one, and he lived up to that name without stunningly well. He thwarted Gannon, saved Zelda and brought peace to the great land of Hyrule. He went missing after a while, but we found him", "thwarted Gannon once and for all",   "male") == ("The Legend of Zelda : The Story of Link" 
"In early era Hyrule, Link was a pretty big deal. Link was the chosen one, and he lived up to that name without stunningly well. He thwarted Gannon, saved Zelda and brought peace to the great land of Hyrule. He went missing after a while, but we found him. He changed the very fabric of Hyrule when he thwarted Gannon once and for all."
"All in all, early era Hyrule would not have been so successful without Link, nor would Hyrule be the way it is today without those contributions."
"By Mikee.")

p oh_crap_i_forgot("Great Drummers", "Bernard Purdie", "Motown", 1960, "Purdie was one of the greatest drummers of all time. He has played with hundreds of musicians and shaped the way that modern drummers look at timing and feel - and melody", "became the most recorded drummer of all time, and created the most influential grooves and backbeats",   "male") == ("Great Drummers : The Story of Bernard Purdie" " " "In late era Motown, Bernard Purdie was a pretty big deal. Purdie was one of the greatest drummers of all time. He has played with hundreds of musicians and shaped the way that modern drummers look at timing and feel - and melody. He changed the very fabric of Motown when he became the most recorded drummer of all time, and created the most influential grooves and backbeats." " " "All in all, late era Motown would not have been so successful without Bernard Purdie, nor would Motown be the way it is today without those contributions." "By Mikee.")



# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# I didn't have too much issue with this challenge, which actually made me think that I did the coding incorrectly. What I did have a problem with was getting my driver tests to work, which I still can't seem to manage.
# I don't know how to represent 'puts' with driver code. :-( I will continue googling, and maybe post in the google+ community.

# What questions did you have while coding? What resources did you find to help you answer them?
# My main question was how to structure a story that would be able to encompass any kind of story (fictional or not). I think I managed it fairly well, and it was actually a lot of fun to rig up. 

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I'm having trouble with driver code, as I have with most of these assignments. I think I will have to attend office hours to get a better perspective on it. Driver code is really neat, I just need a better understanding of it.
# Again, how do you represent something like 'puts?'

# How confident are you with each of the learning objectives?
# I am fairly confident with the objectives listed aside from the driver code, and I had a good time working with it. 

# I enjoyed trying to create a template that could work with any gender and any person of importance. Granted, the scope of this work is still fairly limited, but the blurbs that output are at the very least, F worthy. 



