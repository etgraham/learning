class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly		 = 10  # He's full.
		@stuff_in_intestine  = 0   # He doesn't need to go.

		puts "#{@name} is born."
	end
	
	def feed
		puts "You feed #{@name}."
		@stuffy_in_belly = 10
		passage_of_time
	end
	
	def walk
		puts "You walk #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do
			if @asleep
			  passage_of_time
			end
			if @asleep
			  puts "#{@name} snores, filling the room with smoke."
			end
	      end
	      if @asleep
	        @asleep = false
	        puts "#{@name} wakes up slowly."
	      end
	end
	
	def toss
	  puts "You toss #{@name} up into the air."
	  puts 'He giggles, which singes your eyebrows.'
	  passage_of_time
	end
	
	def rock
	  puts "You rock #{@name} gently."
	  @asleep = true
	  puts 'He briefly dozes off...'
	  passage_of_time
	  if @asleep
	    @asleep = false
		puts '...but wakes when you stop.'
	  end
	end
	
	private
	#  "private" means that the methods defined here are
	#  methods internal to the object.  (You can feed your
	#  dragon, but you can't ask him whether he's hungry.)
	def hungry?
		#  Method names can end with "?"
		#  Usually, we do this only if the method
		#  returns true or false, like this:
		@stuff_in_belly <= 2
	end
	
	def poopy?
	  @stuff_in_intestine >= 8
	end
	
	def passage_of_time
	  if @stuff_in_belly > 0
		#  Move food from belly to intestine.
		@stuff_in_belly		= @stuff_in_belly		-1
		@stuff_in_intestine	= @stuff_in_intestine	+1
	  else  #  Our dragon is starving!
	    if @asleep
		  @asleep = false
		  puts 'He wakes up suddenly!'
		end
		puts "#{@name} is starving!  In desparation, he ate YOU!"
		exit #  This quits the program.
	end
	
	if @stuff_in_intestine >= 10
	  @stuff_in_intestine = 0
	  puts "Whoops! #{@name} has an accident..."
	end
	
	if hungry?
	  if @asleep
	    @asleep = false
		puts 'He wakes up suddenly!'
	  end
	  puts "#{@name}'s stomach grumbles..."
	end
	
	if poopy?
	  if @asleep
	    @asleep = false
		puts 'He wakes up suddenly!'
	  end
	  puts "#{@name} does the potty dance..."
	end
  end
  
end

puts "What do you want to name your dragon?"
name = gets.chomp
pet = Dragon.new name
while true
	puts "Is #{name} hungry, sleepy, need exercise or wants to be rocked? (Type Exit to quit)"
	command = gets.chomp
	if command.downcase == "exit"
	 exit
	elsif command.downcase == "sleepy"
	 pet.put_to_bed
	elsif command.downcase == "hungry"
	 pet.feed
	elsif command.downcase == "exercise"
	 pet.walk
	elsif command.downcase == "rocked"
	 pet.rock
    else
		puts "#{name} does not understand you."
	end
end








#pet = Dragon.new 'Norbert'
#pet.feed
#pet.toss
#pet.walk
#pet.put_to_bed
#pet.rock
#pet.put_to_bed
#pet.put_to_bed
#pet.put_to_bed
#pet.put_to_bed