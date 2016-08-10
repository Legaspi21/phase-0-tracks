#Methods
def build_array(a, b, c)
	new_array = [a,b,c]
end

def add_to_array(array, b)
	array << b
end
	



jayme = []
p jayme

jayme.push("shirt", "pants", "shoes", "hat", "glasses")
p jayme

jayme.delete_at(2)
p jayme

jayme.insert(2, "flip flops")
p jayme

jayme.shift
p jayme

if jayme.include? "glasses"
  p "Jayme has glasses!"
else
  p "Jayme does not have glasses."
end

aidan = ["socks", "jacket", "belt"]
p aidan

pairs = jayme | aidan
p pairs

p build_array("monday", "tuesday", "wednesday")
p add_to_array(["apples"], "bannanas")
p add_to_array([1,"two",3,"four",5,"six",7],"eight")
p add_to_array(["red","orange", "yellow", "green", "blue", "indigo"], "violet")
