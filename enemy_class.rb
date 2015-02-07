#creates the weapon when an enemy is created
class Weapon
	attr_accessor :weapon_type
	attr_accessor :weapon_hit_points
	def initialize
		@seed = rand(0..3)
		@weapons = ["Sword","Hammer","Fire","None"]
		@hit_points = [2,3,4,1]
		@weapon_type = @weapons[@seed]
		@weapon_hit_points = @hit_points[@seed]
	end
end

#enemy super class
class Enemy
	attr_accessor :health
	attr_accessor :name
	attr_accessor :weapon_type
	attr_accessor :weapon_hit_points
	def initialize
		@new_weapon = Weapon.new
		@weapon_type = @new_weapon.weapon_type
		@weapon_hit_points = @new_weapon.weapon_hit_points
	end #initialize end
end #Enemy end

#create new enemies types here
class Troll < Enemy
	def initialize
		@name = "Troll"
		@health = 2
		super
	end
end #Troll end

class Giant < Enemy
	def initialize
		@name = "Giant"
		@health = 3
		super
	end
end #Giant end

class Dragon < Enemy
	def initialize
		@name = "Dragon"
		@health = 5
		super
	end
end #Dragon end

#new_enemy = Troll.new
#puts new_enemy.weapon_type
#puts new_enemy.weapon_hit_points
#puts new_enemy.health
#puts new_enemy.name

