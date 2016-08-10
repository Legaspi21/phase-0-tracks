#Pseudocode for interior designer program
#Create hash
#Ask the user to enter the clients name, age, number of children, decor theme, # of bedrooms, number of bathrooms, if they need an office, least favorite color and if they have any pets
#Convert to proper data types and collect data in symbols
#print hash
#Ask if user needs to update any data
#Create if/elsif for updated data
#print hash

client = {}
	puts "Enter client details. Type none if no input"
	puts "Name?"
		client[:name] = gets.chomp
	puts "Age?"
		client[:age] = gets.chomp.to_i
	puts "Number of Children?"
		client[:children] = gets.chomp.to_i
	puts "Decor theme?"
		client[:decor_theme] = gets.chomp
	puts "Number of bedrooms"
		client[:bedrooms] = gets.chomp.to_i
	puts "Number of bathrooms"
		client[:bathrooms] = gets.chomp.to_i
	puts "Need an office?"
		client[:needs_office] = gets[0]
			if client[:needs_office] == "y"
				client[:needs_office] = true
			elsif client[:needs_office] == "n"
				client[:needs_office] = false
			end
	puts "Least favorite color?"
		client[:dislikes_color] = gets.chomp
	puts "Has pets?"
		client[:has_pets] = gets[0]
		if client[:has_pets] == "y"
			client[:has_pets] = true
		elsif client[:has_pets] == "n"
			client[:has_pets] = false
		end

p client

puts "Is everything correct? Pick a value to update or type none."
	update = gets.chomp.to_sym 
		if update == :name
			puts "Name?"
				client[:name] = gets.chomp
		elsif update == :age
			puts "Age?"
				client[:age] = gets.chomp.to_i
		elsif update == :children
			puts "Number of Children?"
				client[:children] = gets.chomp.to_i
		elsif update == :decor_theme
			puts "Decor theme?"
				client[:decor_theme] = gets.chomp
		elsif update == :bedrooms
			puts "Number of bedrooms"
				client[:bedrooms] = gets.chomp.to_i
		elsif update == :bathrooms
			puts "Number of bathrooms"
				client[:bathrooms] = gets.chomp.to_i
		elsif update == :needs_office
			puts "Need an office?"
				client[:needs_office] = gets[0]
					if client[:needs_office] == "y"
						client[:needs_office] = true
					elsif client[:needs_office] == "n"
						client[:needs_office] = false
					end
		elsif update == :dislikes_color
			puts "Least favorite color?"
				client[:dislikes_color] = gets.chomp
		elsif update == :has_pets
			puts "Has pets?"
				client[:has_pets] = gets[0]
					if client[:has_pets] == "y"
						client[:has_pets] = true
					elsif client[:has_pets] == "n"
						client[:has_pets] = false
					end
		else
			puts "Done"
		end
p client
	

