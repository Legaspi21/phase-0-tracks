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

