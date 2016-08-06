#Cryptography Application
#METHOD DECLARATIONS
#Advances every letter of a string one letter forward 
def encrypt (string)
  i = 0
  while i < string.length
    if string[i] == "z"         #added edge case conditional
      string[i] = "a"
    else
    string[i] = string[i].next
    end
    i += 1
  end
p string
end

#Advances every letter of a string one letter backwards
def decrypt (encrypted_string)
  i = 0
  str = "abcdefghijklmnopqrstuvwxyz"
  while i < encrypted_string.length
    place_letter = encrypted_string[i]      #place_letter is letter in encrypted_string
    new_num = str.index(place_letter)       #new_num is the index in str of place_letter
    encrypted_string[i] = str[new_num - 1]
    #p encrypted_string                     #print each new string for test
    i += 1
  end
p encrypted_string
end

#Pseudo/driver code for interface
#Using [puts] ask the user whether they would like to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password?"
#Using [gets.chomp.downcase] collect the users input in a variable [agent_input], in lower case letters to avoid any confusion
agent_input = gets.chomp.downcase
#Using [puts] ask the user for the password
puts "Ok, what is the password?"
#Store the inputed "password" in the variable [password]
password = gets.chomp
#Build an if/else function based on [agent_input]
#If [agent_input] = encrypt print encrypt (password)
#elsif [agent_input] = decrypt print decrypt (password)
if agent_input == "encrypt"
  encrypt (password)
elsif agent_input == "decrypt"
  decrypt (password)
else 
  p "Security breach!"
#End operation
end
#Encrypt Method
#Define a method (encrypt)
#Establish a counter and set it to 0
#Set up a while loop to run the strings' length
#Add in edge case conditional for z
#String[0] = string[1] example
#End if/else
#print string
#End while loop
#End method

def encrypt (string)
  i = 0
  while i < string.length
    if string[i] == "z"         #added edge case conditional
      string[i] = "a"
    else
    string[i] = string[i].next
    end
    i += 1
  end
p string
end
#encrypt("abc")
#encrypt("zed")

#Decrypt Method
#Adds decrypt method with argument encrypted_string
#set counter to 0
#use alphabet as string to check for index of letter
#run while loop for length of encrypted_string
#set place_letter as letter of index in encrypted_string
#set new_num as the index in str of place_letter
#change encrypted_string to previous index of place_letter
#increment counter
#end while
#print encrypted_string
#end method
#call method with test cases

def decrypt(encrypted_string)
  i = 0
  str = "abcdefghijklmnopqrstuvwxyz"
  while i < encrypted_string.length
    place_letter = encrypted_string[i]      #place_letter is letter in encrypted_string
    new_num = str.index(place_letter)       #new_num is the index in str of place_letter
    encrypted_string[i] = str[new_num - 1]
    #p encrypted_string                     #print each new string for test
    i += 1
  end
p encrypted_string
end
#decrypt("abc")      #zab
#decrypt("afe")      #zed
#decrypt("qbttxpse") #password

#Release 4
#decrypt(encrypt("swordfish")) #swordfish
#What is happening here is like function composition in math...  The input of the entire method of decrypt is the output of the encrypt method when it's input is "swordfish".  i.e.  When you pass in swordfish to encrypt, it scrambles it by pushing each letter to the next letter (should print out "txpsegjti); THEN, we use that scrambled string from encrypt ("txpsegjti") as the argument we pass in to decrypt.  Decrypt takes that input and reverses it, i.e. gives us back "swordfish".