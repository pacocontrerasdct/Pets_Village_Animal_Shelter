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
    puts 'Pet added to our system...'
  end

  def add_client_to_shelter(client)
    clients << client
    puts 'Client added to our system...'
  end

end