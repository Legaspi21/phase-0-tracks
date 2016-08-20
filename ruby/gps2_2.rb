# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Declare hash
  # Separate items in string
  # Iterate through the array and turn EACH item into a SYMBOL
  # Set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: HASH

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # Add new item and quantity to hash
# output: HASH

# Method to remove an item from the list
# input: Item to remove and quantity
# steps: Delete key and value
# output: Updated hash with removed item / quantity

# Method to update the quantity of an item
# input: item name and quantity
# steps: 
  #Find key of item
  #Update item value
# output: Hash with updated quantity

# Method to print a list and make it look pretty
# input: Grocery Hash
# steps: 
  # Iterate through the hash and print EACH key, value pair in a sentence
# output: Printed grocery list

def create_list(string)
	grocery_hash = {}
	the_list = string.split
	the_list.each do |item|
		grocery_hash[item] = 1
	end
	print_list(grocery_hash)
end

def add_item(item,quantity,new_list)
	new_list[item] = quantity
	p new_list
end

def remove_item(item,new_list)
	if new_list.has_key?(item) == true
		new_list.delete(item)
	else
		puts "ERROR."
	end
	p new_list
end

# we can delete this method
# def update_quantity(item,quantity,new_list)
# 	new_list[item] = quantity
# 	p new_list
# end

def print_list(new_list)
	new_list.each do |key,value|
		puts "#{value} #{key}"
	end
end


##Driver Code##
new_list = create_list("")
add_item("Lemonade",2,new_list)
add_item("Tomatoes",3,new_list)
add_item("Onions",1,new_list)
add_item("Ice Cream",2,new_list)
remove_item("Lemonade",new_list)
update_quantity("Ice Cream",4,new_list)

print_list(new_list)

# p add_item("orange",2,new_list)
# remove_item("carrots",new_list)
# update_quantity("potatoes",100,new_list)
# print_list(new_list)

#Reflection
# What did you learn about pseudocode from working on this challenge?
# 	I learned to keep it as simple as possible and that good pseudocode goes a long way when writing code.
# What are the tradeoffs of using arrays and hashes for this challenge?
# 	An array works with creating a list of items and a hash is good for giving each item a quantity.
# What does a method return?
# 	A method returns the last thing it evaluates unless there is something else that is printed within the method.
# What kind of things can you pass into methods as arguments?
# 	You can pass in data structures like a hash or array and also pass in variables that can be strings or integers.
# How can you pass information between methods?
# 	By using it as a parameter or argument in the method declaration.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# 	I think I got a better understanding of passing data structures and manipulating them through methods.
# 	I learned the importance of good pseudocode and communicating with my pair any weaknesses early on.
# 	Overall I feel that any confusion I still had regarding these concepts was resolved during the challenge.