#Method that accepted a block as an argument
def example_method
  puts "I like coding."
  yield("Ruby", "CSS", "HTML")
end

example_method { |language1, language2, langauge3| puts "#{langauge3} is cool. #{language2} is also cool." }



#Array that lists each item 
food = ["candy", "fruit", "bread", "meat"]
p food

puts "This is my array of food."

food.each do |eat| 
  puts "Should I eat #{eat}?"
end

#Array that capitalizes each item and updates array
food = ["candy", "fruit", "bread", "meat"]

puts "This is my array of food."

p food
food.map! do |eat| 
  puts "Should I eat #{eat}?"
  eat.upcase
end

p food


sports_stars = {
  :tennis => "Serena Williams",
  :basketball => "Lebron James",
  :football => "Tom Brady"
}
p sports_stars
puts "Here are some cool sports stars"

sports_stars.each do |sport, player|
  puts "#{player} plays #{sport}"
end

p sports_stars



#2.1 calls
#array
digitsarray1 = [1,2,3,4,5,6,7,8,9,10]
p digitsarray1.delete_if {|digit| digit < 5}
#hash
digitshash1 = {
		"one"=> 1,
		"two"=> 2,
		"three"=> 3,
		"four"=> 4,
		"five"=> 5,
		"six"=> 6,
		"seven"=> 7,
		"eight"=> 8}
p digitshash1.delete_if {|key,value| value > 3 }

#2.2 calls
#array
digitsarray2 = [-5, -4, -6, 1, 2, 3, 4, 7, 8, 9]
p digitsarray2.select {|i| i > 5 }
#hash
digitshash2 = {
		"one"=> 1,
		"two"=> 2,
		"three"=> 3,
		"four"=> 4,
		"five"=> 5,
		"six"=> 6,
		"seven"=> 7,
		"eight"=> 8}
p digitshash2.select {|key,value| value < 5}

#2.3 calls
#array
digitsarray3 = [-5, -4, -6, 1, 2, 3, 4, 7, 8, 9]
p digitsarray3.select {|i| i == 3 }
#hash
digitshash3 = {
		"one"=> 1,
		"two"=> 2,
		"three"=> 3,
		"four"=> 4,
		"five"=> 5,
		"six"=> 6,
		"seven"=> 7,
		"eight"=> 8}
p digitshash3.keep_if {|key,value| value < 3}

#2.4 calls
#array
digitsarray4 = [1, 2, 3, 4, 5, 6, 7, 8]
p digits.take_while {|i| i != 5 } 
