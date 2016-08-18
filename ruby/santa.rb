class Santa
	attr_reader :ethnicity, :age
	attr_accessor :gender, :age

	def initialize(gender, ethnicity, age)
		puts "Initializing Santa instance ..."	
		p @gender = gender
		p @ethnicity = ethnicity
		p @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		p @age = age
		puts "--------"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at (reindeer_name)
		i = @reindeer_ranking.index(reindeer_name)
		@reindeer_ranking.insert(-1,@reindeer_ranking.delete_at(i))
	end
	#Release 2
	# Getter
	# def ethnicity
	# 	@ethnicity
	# end

	# def age
	# 	@age
	# end

	# #Setter
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

end
#Release 4
santas = []
age_range = (0..140).to_a
example_genders = ["agender", "female", "bigender", "male", "female", "transman", "transfemale", "androgyne", "intergender", "polygender", "gender fluid", "genderflux", "demiboy", "demigirl", "demigender", "two-spirit", "pangender", "non-binary", "Cis Man", "Cis Woman", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Native American", "Pacific Islander", "Middle Eastern", "Indian-American", "Korean-American", "Russian", "Greek", "German", "Serb", "Jewish", "Persian", "Martian", "French-African", "Mystical Creature (unicorn)", "N/A"]
100.times.each do santas << Santa.new(example_genders.sample,example_ethnicities.sample, age_range.sample)

end

#Release 2
puts santas[5].speak
puts santas[-1].eat_milk_and_cookies("Oatmeal Cookie")
santas[-1].get_mad_at("Vixen")
p santas[-1]
santas[2].celebrate_birthday
santas[2].age
p santas[2]
santas[4].gender = "male"



#Release 1.2
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")












