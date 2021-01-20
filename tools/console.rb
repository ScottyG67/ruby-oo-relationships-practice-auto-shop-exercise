require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1 = Car.new("Ford","Pinto","Junk")
car2 = Car.new("Ford","GT40","Supercar")
car3 = Car.new("Chevy","Corvet","Junk")
# car4
# car5
# car6
# car7
# car8
# car9
# car10

jim = CarOwner.new("Jim")
bob = CarOwner.new("Bob")

click = Mechanic.new("Click","Junk")
clack = Mechanic.new("Clack","Supercar")

jim.buy_car(car1)
jim.buy_car(car2)
bob.buy_car(car3)

car1.assign_mechanic(click)
car2.assign_mechanic(clack)
car3.assign_mechanic(click)


binding.pry
puts "\n\nDone!\n\n"
