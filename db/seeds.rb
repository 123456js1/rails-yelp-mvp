puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
invicta_madragoa = {name: "Invicta Madragoa", address: "Rua da Esperança 140, Lisboa 1200-659", phone_number: 927607329, category: "belgian"}
la_bonne_crepe = {name: "La Bonne Crêpe", address: "30a Rua Marquesa De Alorna, Lisboa 1700-300", phone_number: 915200556, category: "french"}
emblematico = {name: "Emblemático", address: "Rua De São Paulo 222 Cais Do Sodré, Lisboa 1200-430", phone_number: 218045406, category: "belgian"}
frade_dos_mares = {name: "Frade dos Mares", address: "Av. Dom Carlos I, 55 A, Lisboa 1200-647", phone_number: 213909418, category: "belgian"}
pizzeria_romana = {name: "Pizzeria Romana", address: "Rua Sao João da Praca, 75, Lisboa 1100-519", phone_number: 218860055, category: "italian"}

[invicta_madragoa, la_bonne_crepe, emblematico, frade_dos_mares, pizzeria_romana].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
