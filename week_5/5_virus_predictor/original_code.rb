# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
# require_relative links two ruby files. This line passes 'state_data' through the class definition in this file
#
require_relative 'state_data'

class VirusPredictor

  # provides parameters for the VirusPredictor class, with state_of_origin, pop density, population, region and regional spread
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # executes method predicted_deaths and speed of spread with instance variables from initialize
  # instance variables are available for use with all methods within the class definition
  def virus_effects  
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  # private makes certain methods unavailable from outside of the class definiton, but a method within the class
  # can utilize private methods. EX: virus_effects calls 'predicted_'

  def predicted_deaths(population_density, population, state)
    case 
    when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  def speed_of_spread(population_density, state) #in months
    speed = 0.0
    case 
      when @population_density >= 200 then speed += 0.5
      when @population_density >= 150 then speed += 1
      when @population_density >= 100 then speed += 1.5
      when @population_density >= 50 then speed += 2
      else
        speed += 2.5
    end
   puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population], data[:region],data[:regional_spread])
  state.virus_effects
end

# REFLECTION 
=begin
What parts of your strategy worked? What problems did you face?
Commenting each line of code is very helpful for me, and I didn't encounter many problems. PRIVATE threw me off a little bit, but playing with it in irb
was very helpful.

What questions did you have while coding? What resources did you find to help you answer them?
I didn't have any specific!

What concepts are you having trouble with, or did you just figure something out? If so, what?
I just figured out what symbols were and why they are important. From what I found, symbols use less memory than other objects, and can be very helpful when creating
classes.

Did you learn any new skills or tricks?
I learned that I can use an enumerator to create a whole bunch of class instances!

How confident are you with each of the learning objectives?
I am fairly confident with classes in Ruby and identifying instance methods and variables. 

I enjoy refactoring from if to case, but the syntax trips me up once in a while. when automatically come with an ==, so I need to type out
  the case for each one if I'm using > < or <= >=. 

=end