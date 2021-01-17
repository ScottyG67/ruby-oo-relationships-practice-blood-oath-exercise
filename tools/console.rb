require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

lizards = Cult.new("Lizard People","Center of the Earth", 1666, "hisss", 300)
moon = Cult.new("Moon Men", "Nevada", 1969, "They faked it ... on location")




neil = Follower.new("Neil Legweek", 51, "To the moon, via a soundstage")
fuzz = Follower.new("Fuzz Haircut", 32, "Keep it short")
scale = Follower.new("Grut Chanjizk", 3957, "rarr")

#join_cults
lizards.recruit_follower(scale)
fuzz.join_cult(moon)
moon.recruit_follower(neil)
scale.join_cult(moon)

#make large data set Note:can break terminal so only run when needed

# 10.times do
#   Cult.new("Test Cult #{i}","here",1999,"slogan")
#   Follower.new("Test Follower #{i}", 20, "motto")
# end

# Cult.all.each do |cult|
#    Follower.all.each do |follower|
#      cult.recruit_follower(follower)
#    end
#  end


#cult tests
cult_name = ["Lizard People", "Moon Men"]
location = ["Center of the Earth", "Nevada"]
founding_year = [1666,1969]
slogan = ["hisss","They faked it ... on location"]

#Follower Tests
follower_names = ["Neil Legweek", "Fuzz Haircut", "Grut Chanjizk"]
follower_age = [51,32,3957]
follower_motto = ["To the moon, via a soundstage","Keep it short","rarr"]
test_age = [12,40,90,10000]



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits