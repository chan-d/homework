class Animal
	attr_accessor :kind, :state
	@@count = 0

	def initialize(kind)
		@kind = kind
		@state = 
		@@count += 1
	end 

	def self.count
		@@count
	end

	def eat(food)
		p "I am a #{@kind} and I eat #{food}"
	end

	def awake
		@state = "awake"
	end

	def sleep
		@state = "asleep"
	end
end



class Person < Animal
	attr_accessor :age, :gender, :name
	@@person_count = 0

	def initialize (age, gender, name)
		@age = age
		@gender = gender
		@name = name
		@type = "person"
		@@person_count += 1
	end

	def eat(food)
		return "Sorry #{@name}! You are not a cannibal!" if food.match(/person|people/i)
		p "My name is #{@name} and I am a #{@type} that likes to eat #{food}"
	end

	def awake
		@state = "#{@name} is awake"
	end

	def sleep
		@state = "#{@name} is asleep"
	end

	def self.person_count
		@@person_count
	end

	def greet
		p "Hello! My name is #{@name}. I am #{@type} that is #{@age} years old."
	end
	
end

