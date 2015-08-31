require_relative 'shelter'
require_relative 'clients'
require_relative 'pets'

shelter = AnimalShelter.new('Pets Village')


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

  when '2' #List Pets available for adoption

  when '3' #Add a Client

  when '4' #List Clients

  when '5' #Give up a Pet

  end

  response = menu  
end





