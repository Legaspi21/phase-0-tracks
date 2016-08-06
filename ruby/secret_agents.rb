#An encrypt method that advances every letter of a string one letter forward.
# So "abc" would become "bcd". For now, you can assume lowercase input and output. 
#Any space character should remain a space character -- no change made.
#A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method
# for going backward one letter. How can you find out where a letter is in the alphabet,
# then access the letter right before it? Hint: In the IRB session above, you learned how to ask 
#a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.

#Establish a counter and set it to 0
#Define a method (encrypt)
#Set up a while loop
#Set up a variable for a "string"
#Run the while loop until counter is < length of string
#String of counter 0 should change to string of 0.next
#String[counter.next]
#Counter +=1
#end
#puts string

def encrypt (string)
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
encrypt("abc")
encrypt("zed")

#A decrypt method that reverses the process above. Note that Ruby doesn't
#have a built-in method for going backward one letter. How can you find 
#out where a letter is in the alphabet, then access the letter right before it?
#Hint: In the IRB session above, you learned how to ask a string for the index of a letter.
#"abcdefghijklmnopqrstuvwxyz" counts as a string.

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
decrypt("bcd")
decrypt("afe")