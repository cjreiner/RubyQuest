=begin
This is my attempt at writing a ruby text based
adventure game using classes and hashes.
=end

#require files/gems as needed
require './enemy_class.rb'
require './Player_class.rb'
require './Fight_class_attempt.rb'
require './Room_class.rb'

#Begin main program
puts "Welcome to Ruby Quest!"
puts "You must search for the Ruby!"
puts "Please tell me your name seeker:"
name = gets.chomp
#create player
player1 = Player.new(name)
puts "Do you want to play a long or short game?"
game_length = gets.chomp.to_s.capitalize

#create the array of rooms for the game
rooms = []

#determine the number of rooms
if game_length == "Short"
	game_length = 3
else
	game_length = 5
end

#assign rooms into the array. each one is unique as we call for a 
#new "room" each time
game_length.times do
	rooms << Room.new
end

#place the ruby into the last room
rooms[game_length-1].has_ruby = true

#now that the rooms are created this begins game play. We enter each room
#so now, head over the to player class to follow the
#rest of this code....

rooms.each do |room|
	puts room.has_enemy
	puts room.walls
	player1.enter(room)
end

#if the player has completed each room in the array, this 
#code will now run.

puts "Congratulations! You've found the Ruby!"
puts "You finish with health of: #{player1.health}"
#We could add code here to ask to play again
#I would need code to learn how to clear our classes from memory
#and return the the top of this code. 