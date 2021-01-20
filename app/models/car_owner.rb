class CarOwner

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []
  def self.all
    @@all
  end

  def cars
    #all the cars that a specific owner has
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    #all the mechanics that a specific owner goes to
    self.cars.map {|car| car.mechanic}.uniq
  end

  def self.average_number_of_cars
    #average amount of cars owned for all owners
    a = Car.all.select {|car| car.owner != nil}.length.to_f
    b =  CarOwner.all.length.to_f
    a/b
  end

  def buy_car(car)
    car.owner = self
  end



end
