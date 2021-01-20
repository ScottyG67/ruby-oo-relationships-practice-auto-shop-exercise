class Mechanic

  attr_reader :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

@@all = []
def self.all
  @@all
end

def cars
  #list of cars that a mechanic services
  Car.all.select {|car| car.mechanic == self}
end

def car_owners
  #list of owners that go to mechanic
  self.cars.map{|car| car.owner}
end

def car_owner_names
  #list of names from car_owners
  self.car_owners.map{|owner| owner.name}
end


end
