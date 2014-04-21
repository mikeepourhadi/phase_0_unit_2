# U2.W6: Drawer Debugger


# I worked on this challenge with: Tyler Keating


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

def initialize
	@contents = []
	@open = true
end

def open
	@open = true
end

def close
	@open = false
end 

def add_item(item)
	@contents << item
end

def remove_item(item = @contents.pop) #what is `#pop` doing?
	@contents.delete(item)
end

def dump  # what should this method return?
	@contents.clear
	puts "Your drawer is empty."
end

def view_contents
	puts "The drawer contains:"
	@contents.each {|silverware| puts "- " + silverware.type }
end

end


class Silverware
attr_reader :type

# Are there any more methods needed in this class?
def initialize(type, clean = true)
	@type = type
	@clean = clean
end

def eat
	puts "eating with the #{type}"
	@clean = false
end

def clean_silverware
	@clean = true
	puts "Just a heads up, #{type} is clean now, good job. Look at you. All domestic."
end


end

knife1 = Silverware.new("knife") # new instance of silverware, with name knife

silverware_drawer = Drawer.new # new drawer instance
silverware_drawer.add_item(knife1) # pushing knife1 into drawer
silverware_drawer.add_item(Silverware.new("spoon")) #new silverware instance spoon, pushed into drawer
silverware_drawer.add_item(Silverware.new("fork"))  #new silverware instance fork, pushed into drawer
silverware_drawer.view_contents # print array silverware drawer

silverware_drawer.remove_item # remove last item in silverware drawer (forK)
silverware_drawer.view_contents # print silverware drawer
sharp_knife = Silverware.new("sharp_knife") # new silverware, sharp_knife


silverware_drawer.add_item(sharp_knife) # push sharp_knife into drawer

silverware_drawer.view_contents # print silverware drawer

removed_knife = silverware_drawer.remove_item(sharp_knife) # set obj sharpknife to removed_knife after it is removed from drawer
removed_knife.eat # set clean to false
removed_knife.clean_silverware # set clean to true
clean_knife = removed_knife # removed knife is clean, so call it clean and put it back into the drawer
silverware_drawer.add_item(clean_knife)

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? NOTHING, dump clears it

fork = Silverware.new("fork")

silverware_drawer.add_item(fork)
silverware_drawer.view_contents
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
fork.clean_silverware
silverware_drawer.add_item(fork)
silverware_drawer.view_contents


# 5. Reflection 
=begin

This was an enjoyable challenge. I like debugging a program, and seeing a large block of code to play around with. Development driven by driver code is entertaining, and reworking code within the confines of 
predefined driver code is a great experience. 

I didn't feel that anything was particularly tedious, and I decided to write comments on most of the driver code so I could follow along what was going on: it was very helpful to comment all of the driver code so I could
finish off the bonus section fairly quickly. 

On a side note, this really helped me further understand class usage. Objects are very interesting things, and at the same time, very hard to conceptualize. If I had a solid, wooden drawer, I can clearly see what is insise. With code,
I have to call a display method, but only if I created one. I don't know how easy it is going to be for me to keep track of a modified object. Like the silverware drawer: without the puts statements, I would have not a single clue what happened with it. 

end






