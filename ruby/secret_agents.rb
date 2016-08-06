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
encrypt("abc")
encrypt("zed")

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
decrypt("abc")      #zab
decrypt("afe")      #zed
decrypt("qbttxpse") #password