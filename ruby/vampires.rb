puts "How many employees will be processed?"
apps_to_process = gets.chomp.to_i
until apps_to_process == 0

	def werewolf_quiz
	puts "What is your name?"
	user_name = gets.chomp.downcase
	puts "How old are you?"
	user_age = gets.chomp.to_i
	puts "What year were you born?"
	year_of_birth = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? yes or no"
	garlic_bread = gets.chomp.downcase
	puts "Want to enroll in the company’s health insurance? yes or no"
	health_insurance = gets.chomp.downcase
		allergies = nil
		while allergies != "done"
			puts "Name any allergies, one at a time. Type done when finished"
			allergies = gets.chomp
		end
		
	age = true if user_age == year_of_birth - 2016 && user_age >= 100
	
	garlic = true if garlic_bread == "yes"
	
	health = true if health_insurance == "yes"
	
	
	
	
	if age && garlic || health
		puts "Probably not a vampire."
	elsif !age && !garlic && health
		puts "Probably a vampire."
	elsif !age && garlic && !health
		puts "Probably a vampire."
	elsif user_name == "drake cula" || "tu fang"
		puts "Almost certainly a vampire."
	else
		puts "Results inconclusive"
	end
	
	p user_name, user_age, year_of_birth, garlic_bread, health_insurance
	end
  werewolf_quiz
  apps_to_process = apps_to_process - 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."