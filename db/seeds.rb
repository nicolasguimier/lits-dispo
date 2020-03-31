puts 'Start seeds'

Hospital.destroy_all
puts 'Hospital table dropped'
User.destroy_all
puts 'User table dropped'

puts '-> Start users'
igor = User.new(
    email: 'igor@example.com',
    password: 'password')
igor.save!

katarina = User.new(
  email: 'katarina@example.com',
  password: 'password')
katarina.save!

puts "#{User.count} users imported."


puts '-> Start Hostpitals'
nantes = Hospital.new(
    name: 'CHU de Nantes',
    address: "5 Allée de l'Île Gloriette, 44093 Nantes",
    contact_infos: 'Dr Richard, Service réanimation, 4ème étage',
    phone: '04 05 06 07 08',
    total_beds_nb: 50,
    free_beds_number: 20
    )
nantes.owner = igor
nantes.save!

angers = Hospital.new(
    name: 'CHU de Angers',
    address: "4 Rue Larrey, 49100 Angers",
    contact_infos: 'Service de réanimation, aile gauche',
    phone: '02 41 35 36 37',
    total_beds_nb: 30,
    free_beds_number: 25
    )
angers.owner = katarina
angers.save!

puts "#{Hospital.count} hospitals imported."
puts 'End Feeds'
