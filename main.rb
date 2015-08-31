require_relative 'shelter'
require_relative 'clients'
require_relative 'pets'

shelter = AnimalShelter.new('Pets Village')

def list_pets shelter
  shelter.pets.each_with_index { |pet, index| puts "Pet N. #{index}: Its name is #{pet.name} and is a #{pet.breed}" }
end

def list_clients shelter
  shelter.clients.each_with_index { |client, index| puts "Client N. #{index}: Its name is #{client.name} and has #{client.num_of_pets} pets." }
end

def menu
  puts `clear`
  puts '*' * 52
  puts "* Welcome to Pets Village! *".center 50
  puts '*' * 52
  puts '1: Add a Pet'
  puts '2: List Pets available for adoption'
  puts '3: Add a Client'
  puts '4: List Clients'
  puts '5: Give up a Pet'
  puts 'q: Quit'
  print '-->'
  gets.chomp
end

response = menu # get the value user inputs in

while response.downcase != 'q'
  case response
  when '1' #Add a Pet
    puts 'Name of the Pet?'
    name = gets.chomp
    puts 'Do the pet has any breed? Breed/ None'
    breed = gets.chomp
    puts 'What is its age?'
    age = gets.chomp
    puts 'Is male or female?'
    gender = gets.chomp
    puts 'Do it has any favorite toys? Which one/s?'
    favorite_toys = gets.chomp

    # Creating a new pet
    pet = Pets.new(name, breed, age, gender, favorite_toys)
    puts shelter.add_pet_to_shelter(pet)
    gets

  when '2' #List Pets available for adoption
    puts 'Here are all the pets:'
    list_pets(shelter)
    gets

  when '3' #Add a Client
    puts 'Name of the client?'
    name = gets.chomp
    puts 'How old is he/she?'
    age = gets.chomp
    puts 'A gentleman or a lady?'
    gender = gets.chomp
    puts "How many pets has the #{gender}?"
    num_of_pets = gets.chomp

    # Creating a new Client
    client = Clients.new(name, age, gender, num_of_pets)
    puts shelter.add_client_to_shelter(client)
    gets

  when '4' #List Clients
    puts 'This are all the clients:'
    list_clients(shelter)
    gets

  when '5' #Give up a Pet

  end

  response = menu  
end





