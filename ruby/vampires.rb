puts "What is your name?"
user_name = gets.chomp
puts "How old are you?"
user_age = gets.chomp
puts "What year were you born?"
year_of_birth = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company’s health insurance? y/n"
health_insurance = gets.chomp
#Conditional Logic
#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance,
#the result is “Probably not a vampire.”
#If the employee got their age wrong, and hates garlic bread or waives insurance,
#the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance,
#the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case,
#you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”
if user_age < "100" && (garlic_bread = "y" || health_insurance = "y")
	puts "“Probably not a vampire."
elsif user_age > "99" && (garlic_bread = "n" || health_insurance = "n")
	puts "“Probably a vampire."
elsif user_age > "99" && garlic_bread = "n" && health_insurance = "n"
	puts "“Almost certainly a vampire."
elsif user_age < "100" && garlic_bread = "y" && health_insurance = "y" && user_name = "Drake Cula" || "Tu Fang"
	puts "“Definitely a vampire"
else
	puts "“Results inconclusive"
end