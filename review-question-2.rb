class Car
attr_reader :make, :model

@@all = []

def initialize(make, model)
  @make = make
  @model = model
  @@all << self
end

def drive
  puts "VROOOOOOOOOOOOM!"
end

def self.all
  @@all
end

end


car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

BONUS:

car = Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"


######## BONUS ##########

class Car
attr_reader :make, :model

@@all = []


def initialize(hash)
  @make = hash[:make]
  @model = hash[:model]
  @@all << self

end

def drive
  puts "VROOOOOOOOOOOOM!"
end

def self.all
  @@all
end

end





