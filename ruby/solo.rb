#Build-a-bear class
# Class ------------------------
# Build-a-bear

# CHARACTERISTICS ----------------
# Age: varies 
# Name: varies
# Gender: varies 

# BEHAVIOR -----------------------
# Wears a hat
# Filling
# Speaks

class Build_a_bear
	#attr_reader :age, :name, :gender
	attr_accessor :age, :name, :gender

	def initialize(name,age,gender)
		puts "Creating #{name}...."
		@name = name
		@age = 0
		@age = age
		@gender = gender
		puts "-------------"	
	end

	def wear_hat(color)
		puts "Bear is now wearing a #{color} hat!"
	end

	def filling(material)
		puts "Bear is now stuffed with #{material} filling!"
	end

	def speak(phrase)
		puts "#{phrase}"
	end
end


	


bears_built = []
puts "Would you like to build a bear? Type 'yes' to build or type 'quit' to exit."
response = gets.chomp
until response == "quit"
	puts "Give your bear a name"
	name = gets.chomp
	puts "Ok, how old is #{name}? *Hit enter if #{name} was just born."
	age = gets.chomp.to_i
	puts "Is #{name} a boy or a girl?"
	gender = gets.chomp
	new_bear = Build_a_bear.new(name, age, gender)
	bears_built << new_bear
	puts "Would you like to customize #{name}?"
	customize = gets.chomp.chars.first.downcase
		if customize == "y"
			puts "Do you want your bear to wear a hat? "
			hat = gets.chomp.chars.first.downcase
				if hat == "y" 
					puts "What color is your bears hat?"
					color = gets.chomp
					new_bear.wear_hat(color)
				else
					puts "Ok no hat it is!"
				end
			puts "What type of material would you like your bear stuffed with?"
			material = gets.chomp
			new_bear.filling(material)
			puts "Give your bear the power to communicate. Type a phrase you would like your bear to speak."
			phrase = gets.chomp
			new_bear.speak(phrase)
		else
		end
	
	puts "Would you like to build another bear? Type 'yes' to build or type 'quit' to exit."
	response = gets.chomp
end

bears_built.each do |b|
	p b.name
	p b.age
	p b.gender
end




