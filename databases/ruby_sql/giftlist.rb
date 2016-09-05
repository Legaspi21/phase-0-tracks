require 'sqlite3'
require 'faker'
require "highline/import"


db = SQLite3::Database.new("giftlist.db")

create_gifts_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS gifts(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    price REAL DEFAULT 0.00,
    fam_id INT,
    FOREIGN KEY(fam_id) REFERENCES family(id)
  )
  SQL

create_family_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS family(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    budget INTEGER,
    CONSTRAINT name_unique UNIQUE (name)
  )
  SQL

create_shopping_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS shopping_list(
    id INTEGER PRIMARY KEY,
    gift_id INTEGER,
    fam_id INTEGER,
    FOREIGN KEY(gift_id) REFERENCES gifts(id),
    FOREIGN KEY(fam_id) REFERENCES family(id)
  )
  SQL

db.execute(create_gifts_cmd)
db.execute(create_family_cmd)
db.execute(create_shopping_cmd)

def add_gift(db, item, price, name)
  	db.execute("INSERT INTO gifts (item, price,fam_id) VALUES (?, ?, (SELECT id FROM family WHERE name=?))", [item, price, name])
  	puts "Great! I'll add #{item} to #{name}'s GIFTLIST!"
end

def add_family(db, name, budget) 	
  	db.execute("INSERT OR IGNORE INTO family (name, budget) VALUES (?, ?)", [name, budget])
end

def shopping_list(db, name, item)
	db.execute("INSERT INTO shopping_list (gift_id, fam_id) VALUES ((SELECT id FROM gifts WHERE item = ?),(SELECT id FROM family WHERE name = ?))", [item, name])
end

def gift_suggest
	Faker::Commerce.product_name
end

def random_price
	Faker::Commerce.price
end

def total_gift_cost(db)
	total = db.execute("SELECT SUM(price) FROM gifts")
	total[0][0]
end
# Get total of price for 1 persons gifts
def fam_id_total(db, name)
	total = db.execute("select sum(price) from gifts where fam_id = (select id from family where name = ?)", [name])
	total[0][0]
end

def print_gifts(db)
	puts "Here is your current GIFTLIST:"
	puts db.execute("SELECT (item) FROM gifts")
end

# def print_giftlist(db)
# 	p names = db.execute("SELECT name FROM family")
# 	p flat = names.flatten!
# 	p flat.each do |i|
# 	p db.execute("SELECT item, price FROM gifts WHERE fam_id = (SELECT id FROM family WHERE name= ? )"[i])
# 	end
# end

#INTERFACE

puts "Welcome to GIFTLIST"
total_budget = ask "Enter a total budget. $ "
response = ""
until response == "done"
	puts "Who will you be creating a GIFTLIST for?"
	name = gets.chomp
	budget = ask "Enter a budget for #{name}'s gifts. $ "
	add_family(db, name, budget)
	puts "What gift did you have in mind for #{name}?"
	puts "If you don't know what to get #{name} type idk"
	item = gets.chomp
		if item == 'idk'
			puts "Hmm how about:"
			p item = gift_suggest
			p price = random_price
			puts "Yay or Nay?"
			ans = gets.chomp.downcase
				if ans == 'yay'
				else
					until ans == 'yay'
					puts "Hmm how about:"
					p item = gift_suggest
					p price = random_price
					puts "Yay or Nay?"
					ans = gets.chomp.downcase
						if ans == 'yay'
						end
					end
				end
		else 
			price = ask "How much does #{item} cost? $ "		
		end
	
		if total_gift_cost(db) == nil
			add_gift(db, item, price, name)
			shopping_list(db, name, item)
		elsif total_gift_cost(db) <= total_budget.to_i && fam_id_total(db, name) == nil
			add_gift(db, item, price, name)
			shopping_list(db, name, item)
		elsif total_gift_cost(db) <= total_budget.to_i && fam_id_total(db, name) <= budget.to_i
			add_gift(db, item, price, name)	
			shopping_list(db, name, item)		
		else
			puts "Whoa there! That's going to put you over your budget of $#{total_budget}!"
		end
	puts "Would you like to create another GIFTLIST? Type YES to continue or DONE to quit and see your GIFTLIST!"
	response = gets.chomp.downcase
end
print_gifts(db)














