#Take a real name and create a fake name
#Swap first and last name. Name is a string so we can use split to turn the full name into two strings then swap the two strings.
#If a character in the string is a vowel (a,e,i,o,u,a) go to the next vowel
#If a character in the string is a consonant (b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z,b) go to the next consonant

#Define a method that takes the name the user inputs and temporarily downcases it
def secret_name (name)
	name = name.downcase

#create temporary name container 
temp_name = ""
#make to strings containing vowels and consonants 
#handle edge case by copying the first character to the end
vowels = "aeioua"
consonants = "bcdfghjklmnpqrstvwxyzb"
#iterate through each character in the name string and find vowels, consonants and spaces
#add the corresponding letter/character to the temporary name variable and return that variable
name.each_char do |letter|  
	if letter == " "
		temp_name += " "
		
	elsif vowels.include?(letter)
 		temp_name += vowels[vowels.index(letter).next]
      	
    elsif consonants.include?(letter)
    	temp_name += consonants[consonants.index(letter).next]
    
end
    end
    return temp_name
    end
#split the altered name into multiple strings. For ex: if first and last name make two strings in array
#reverse the order of the strings in the array
#capitalize the first letter and join the strings but keep the space
def swap (secret_name)
	swapped_name = secret_name.split.reverse
	swapped_name.map(&:capitalize).join (" ")
end


#Create while loop to handle user input and if done end program

name = ""

puts "Enter a name and get a fake name back. When finished type done"
name = gets.chomp

unswapped_name = secret_name(name)
fake_alias = swap(unswapped_name)

    p "#{name} is also known as #{fake_alias}"
    agent = {name => fake_alias}
    while name != "done"
    agent.store(name, fake_alias)
    
    puts "Enter a name and get a fake name back. When finished type done"
	name = gets.chomp
if name == "done" then
	p agent
	break

else
	unswapped_name = secret_name(name)
	fake_alias = swap(unswapped_name)
	p "#{name} is also known as #{fake_alias}"
end	

end


#Help!
#Not sure where this block goes as it returns done as my key for as many times as I run program
	#agent.each do puts "#{name} is also known as #{fake_alias}"
#I want to iterate through the hash and print the string for each key value pair
