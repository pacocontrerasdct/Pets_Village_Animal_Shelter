class AnimalShelter
  attr_reader :name
  attr_accessor :pets

  def initialize name
    @name = name
    @pets = []
  end

end