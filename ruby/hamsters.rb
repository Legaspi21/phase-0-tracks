def hamster_data
 puts "Whats is the hamster name"
 name = gets.chomp
 puts "What is the hamster's volume (1-10)"
 volume = gets.chomp.to_i
 puts "What is the hamster's fur color?"  
 fur_color= gets.chomp
 puts "Is the hamster a good candidate for adoption? (yes or no )"
 adoption = gets.chomp[0]
 puts "What is the estimated age of the hamster"
 age = gets.chomp.to_i
 

 	age = NIL
 	
 
  

  	
 puts "The hamster's name is : #{name} " 
 puts " The hamster's volume is: #{volume}" 
 puts "The hamster's fur color is: #{fur_color}"
 puts "Adopt the hamster? : #{adoption}"
 puts "The hamster's age is : #{age}"

end

puts hamster_data