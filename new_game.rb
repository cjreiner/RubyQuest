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
puts "*" * 22
puts "Welcome to Ruby Quest!"
puts "*" * 22
puts "\n"
puts "You must search for the Ruby!"
puts "Please tell me your name seeker:"
name = gets.chomp
puts "Thanks! Good luck #{name}!"
#create player
player1 = Player.new(name)
puts "\n"
puts "Do you want to play a long or short game?"
game_length = gets.chomp.to_s.capitalize
#determine the number of rooms
if game_length == "Short"
	game_length = 3
else
	game_length = 5
end

#game text
puts "\n"
puts "Alright #{name}, you have just entered a large old castle."
puts "The royal family mysteriously disappeared long ago."
puts "Old tales speak of a special Ruby trapped inside."
puts "Legend says this Ruby can help you accomplish many amazing tasks."
puts "*" * 22

#assign rooms into an array. each one is unique as we call for a 
rooms = []
#new "room" each time this loop runs. Each room is unique
game_length.times do
	rooms << Room.new
end

#place the ruby into the last room
#remember you have to subtract 1 since array's start at 0
rooms[game_length-1].has_ruby = true

#now that the rooms are created this begins game play. We enter each room
#so now, head over the to player class to follow the
#rest of this code....

rooms.each do |room|
	#puts room.has_enemy
	#puts room.walls
	player1.enter(room)
end

#if the player has completed each room in the array, this 
#code will now run.

puts "Congratulations #{name}! You've found the Ruby!"
puts "You finish with health of: #{player1.health}"
#We could add code here to ask to play again
#I would need code to learn how to clear our classes from memory
#and return the the top of this code. 