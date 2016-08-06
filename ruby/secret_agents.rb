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

#Release 5(lines 61-119)
#Set up puts and gets.chomp to ask for encrypt or decrypt
#use pref as variable for input
#run until loop to catch mistyped words
#exit until loop when words typed exactly
#after until loop, set up if/else for encrypt or decrypt
#fun methods using pref as input
#set pref to be the method input using older variable names
#print method output to screen
#end all loops/methods

puts "Do you want to encrypt or decrypt a password?"
pref = gets.chomp
pref = pref.downcase
until pref == "decrypt" || pref == "encrypt"
    puts "Please type exactly decrypt or encrypt as this is classified info..."
    puts "Do you want to encrypt or decrypt a password?"
    pref = gets.chomp
    pref = pref.downcase
end
if pref == "encrypt"
  puts "What password would you like to encrypt?"
  pass_word = gets.chomp
  pass_word = pass_word.downcase
  string = pass_word
  def encrypt(string)
    i = 0
    while i < string.length
      if string[i] == "z"                 #added edge case conditional
        string[i] = "a"
      else
      string[i] = string[i].next
      end
      i += 1
    end
  p string
  end
  encrypt(string)


else
  puts "What password would you like to decrypt?"
  pass_word = gets.chomp
  pass_word = pass_word.downcase
  encrypted_string = pass_word
  def decrypt(encrypted_string)
    i = 0
    num = "abcdefghijklmnopqrstuvwxyz"
    while i < encrypted_string.length
      place = encrypted_string[i]         #place is letter in encrypted_string
      new_num = num.index(place)          #new_num is the index in num of letter
      encrypted_string[i] = num[new_num - 1]
      #p encrypted_string                 #print each new string for test
      i += 1
    end
  p encrypted_string
  end
  decrypt(encrypted_string)
end