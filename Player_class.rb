class Player
	attr_accessor :name
	attr_accessor :health
	def initialize(name)
		@name = name
		@health = 20 #this assign "health" at the player level. It makes more sense to do it here so we can track it during the game.
	end

	#this section will control the movement between rooms
	def enter(room) #we will pass each room from the array
		#evlaute if an enemy is in the room. and run the fight class
		if room.has_enemy
			puts "This room has an enemy!" 
			fight = Fight.new(self,room.enemy,room.has_enemy) #player passes itself into the method to be used.
			fight.attack
		end
		#decide which way to go
		#this code will start right away if no enemy is in the room, or if you defeat the enemy
		puts "The room is dark and cold!"
		puts "Which way? North, South, East or West?"
		direction = gets.chomp.to_sym #must convert this to a symbol, since we used a symbol in the hash in the room class
		until room.walls[direction] == "open" do
			puts "You stumble around in the dark. Choose a new direction"
			direction = gets.chomp.to_sym
		end
			puts "You go to the next room!"
			#add movement into the next room array
	end #end enter
end