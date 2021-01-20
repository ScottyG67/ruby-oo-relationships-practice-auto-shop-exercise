class Car
  attr_accessor :mechanic, :owner
  attr_reader :make, :model, :classification

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  @@all = []
  def self.all
    @@all
  end

  def self.classifications
    #list of all car classifications
    self.all.map {|car| car.classification}.uniq
  end

  def self.find_mechanics(classification)
    #list of mechanics that have an expertise that matches the passed in car
    #mechanic.specialty
    Mechanic.all.select {|mechanic| mechanic.specialty == classification}
  end

  def find_mechanics
    Car.find_mechanics(self.classification)
  end

  def assign_mechanic (mechanic)
    if mechanic.specialty == self.classification
      self.mechanic = mechanic 
    else
      "#{mechanic.name} only works on #{mechanic.specialty} cars."
    end
  end







end
