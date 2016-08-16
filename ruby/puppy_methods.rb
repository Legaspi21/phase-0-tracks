class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times {puts "woof"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(int)
  	int * 7
  end

  def sleep
  	puts "zzzzzzzzzzzzz"
  end

  def initialize
  	puts "Initializing new puppy instance..."	
  end
end


rover = Puppy.new
puts rover.fetch("ball")
puts rover.speak(4)
puts rover.roll_over
puts rover.dog_years(5)
puts rover.sleep




class Swimming

	def back_stroke
		puts "Swims on back"
	end

	def breast_stroke
		puts "Swim like Phelps"
	end

	def initialize
		puts "Initializing new instance..."
	end
end


# def create_swimmers
	swim = {}
	i = 0
	while i <= 50

swimmer_name = "swimmer#{i}"

	swim.store(swimmer_name, Swimming.new)
	i += 1
	
	end
	#puts swim
# end
	# create_swimmers
swim.each do |k, v|
	v.breast_stroke
	v.back_stroke
end

puts swim
	



