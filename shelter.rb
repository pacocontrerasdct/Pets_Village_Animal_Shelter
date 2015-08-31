class AnimalShelter
  attr_reader :name
  attr_accessor :pets, :clients

  def initialize name
    @name = name
    @pets = []
    @clients = []
  end

  def add_pet_to_shelter(pet)
    pets << pet
  end

  def add_client_to_shelter(client)
    clients << client
  end

end