class Fight
	
	def initialize(player,enemy,has_enemy) #we can pass object player and enemy into this Fight class and thus access it's attributes
		 @player=player
		 @enemy=enemy
		 @has_enemy=has_enemy
		 @attack_location
		 @block_location	 
	end

	def attack
		#puts @player.health
		#puts @enemy.health
		until (@player.health<=0 || @enemy.health<=0) do
			puts "Choose your attack (High/Low):"
			@attack_location=gets.chomp.to_s.capitalize
			@block_location=rand(1..2)
			if (@attack_location=="High" && @block_location==1) || (@attack_location=="Low" && @block_location==2)
				puts "Success! -5 health to your enemy!"
				@enemy.health = @enemy.health - 5
				puts "Your enemy's health is now: #{@enemy.health}"
				puts "\n"
			else
				puts "Miss! Try again! -#{@enemy.weapon_hit_points} health to you! OUCH!"
				@player.health = @player.health - @enemy.weapon_hit_points
				puts "Your health is now: #{@player.health}"
				puts "\n"
			end #end if
		end #end until loop
		
		if @player.health<=0
			puts "You lost! Game over"
			puts "\n"
			exit
		else
			puts "You win! This room is now clear"
			puts "\n"
			@has_enemy = false
		end
	
	end #end attack 
end #end Fight
