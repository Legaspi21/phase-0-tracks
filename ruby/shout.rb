# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end

# end

# Shout.yell_angrily("Quiet")
# Shout.yelling_happily("Hurray")

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end

end

class Human
  include Shout
end

class Parrot
  include Shout
end

human = Human.new
p human.yell_angrily("I am so upset")
p human.yelling_happily("Oh happy day")

parrot = Parrot.new
p parrot.yell_angrily("Wheres my cracker?")
p parrot.yelling_happily("Time to eat")