class Clients

  attr_accessor :name, :age, :gender, :num_of_pets

  def initialize(name, age, gender, num_of_pets)
    @name = name
    @age = age
    @gender = gender
    @num_of_pets = num_of_pets
  end

end