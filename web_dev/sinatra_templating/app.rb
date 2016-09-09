# require gems
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

db.execute("CREATE TABLE IF NOT EXISTS campuses (id integer primary key, campus VARCHAR (40))")



# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources


# post '/reader' do
# 	@over_age = db.execute("SELECT * FROM students WHERE name=?", [params['name']])
# 	p @over_age
# 	@people = ""
# 	@over_age.each do |student|
# 		@people << "Name: #{student['name']}<br>"
# 		@people << "Age: #{student['age']}<br>"
# 		@people << "Campus: #{student['campus']}<br><br>"
# 	end
# 	@people
# 	erb :reader
# end
post '/reader' do 
    @individual = db.execute("SELECT * from students WHERE age>=?",params['age'])
   @person = ""
 @individual.each do |student|
   
   @person << "Name: #{student['name']}<br>"
   @person << "Age: #{student['age']}<br>"
   
 end
 @person
    erb :reader
end

post '/campus' do
	@campus = db.execute("INSERT INTO campuses(campus) VALUES (?)",[params['campus']])
	@print_campus = db.execute("SELECT * FROM campuses")
	@campus_list = ""
	@print_campus.each do |camp|
	@campus_list << "Campus: #{camp['campus']}<br>"
	end
	erb :new_campus
end

get '/reader' do
	erb :reader
end

get '/students/campus' do 
	erb :new_campus
end