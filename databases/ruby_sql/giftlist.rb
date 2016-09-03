require 'sqlite3'
require 'faker'
require "highline/import"


db = SQLite3::Database.new("giftlist.db")

create_gifts_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS gifts(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    price INT
  )
  SQL

create_family_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS family(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    budget INTEGER
  )
  SQL

# create_list_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS shopping_list(
#     id INTEGER PRIMARY KEY,
#     gift_id INTEGER,
#     fam_id INTEGER,
#     FOREIGN KEY(gift_id) REFERENCES gifts.id,
#     FOREIGN KEY(fam_id) REFERENCES family.id
#   )
#   SQL

db.execute(create_gifts_cmd)
db.execute(create_family_cmd)
# db.execute(create_list_cmd)

def add_gift(db, item, price)
  db.execute("INSERT INTO gifts (item, price) VALUES (?, ?)", [item, price])
end

def add_family(db, name, budget)
  db.execute("INSERT INTO family (name, budget) VALUES (?, ?)", [name, budget])
end

def gift_suggest
	Faker::Commerce.product_name
end

def total_gift_cost
	db.execute("SELECT SUM(price) FROM gifts")
end
#INTERFACE

puts "Welcome to GIFTLIST"
puts "Who will you be creating a GIFTLIST for?"
name = gets.chomp
budget = ask "Enter a budget. $ "
add_family(db, name, budget)
puts "What gift did you have in mind for #{name}?"
puts "If you don't know what to get #{name} type idk"
item = gets.chomp
	if item == 'idk'
		puts "Hmm how about:"
		p item = gift_suggest
		puts "Yay or Nay?"
		ans = gets.chomp.downcase
			if ans == 'yay'
				puts "Great! I'll add #{item} to #{name}'s GIFTLIST!"
			else
				until ans == 'yay'
				puts "Hmm how about:"
				p item = gift_suggest
				puts "Yay or Nay?"
				ans = gets.chomp.downcase
					if ans == 'yay'
					puts "Great! I'll add #{item} to #{name}'s GIFTLIST!"
					end
				end
			end	
	end
price = ask "How much does #{item} cost? $ "
add_gift(db, item, price)










