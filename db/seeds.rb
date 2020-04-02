puts 'Start seeds'
FreeBed.destroy_all
puts 'FreeBed table dropped'
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


puts '-> Start Hospitals'

creteil = Hospital.new(
    name: 'Hopital intercommunal de Créteil',
    address: "Hopital intercommunal, 94000 Créteil",
    contact_infos: 'Cadre de Santé : M. Adrien Constan / Médecin : Dr. Frédérique Schortgen ',
    phone: '01 45 17 59 60 - 01 45 17 56 42 '
    )
creteil.save!
amiens = Hospital.new(name: 'CHU Amiens',
	address: 'CHU, Place Victor Pauchet, 80000 Amiens',
	phone: '03 22 08 80 00',
	contact_infos: '')
amiens.save!
# sleep(2)
angers = Hospital.new(
	name: 'CHU Angers',
  address: "4 Rue Larrey, 49000 Angers",
  contact_infos: 'Service de réanimation, aile gauche',
  phone: '02 41 35 36 37')
angers.save!
# sleep(2)
besancon = Hospital.new(name: 'CHU Besançon',
	address: '2 Place Saint-Jacques, 25000 Besançon',
	phone: '03 81 66 81 66',
	contact_infos: '')
besancon.save!
# sleep(2)
bordeaux= Hospital.new(name: 'CHU Bordeaux',
	address: '12 rue Dubernat, 33400 Talence',
	phone: '05 56 79 56 79',
	contact_infos: '')
bordeaux.save!
# sleep(2)
brest = Hospital.new(name: 'CHRU Brest',
	address: '2 avenue du Maréchal Foch, 29200 BREST',
	phone: '02 98 22 33 33',
	contact_infos: '')
brest.save!
# sleep(2)
caen = Hospital.new(name: 'CHU Caen',
	address: 'CHU, avenue de la Côte de Nacre, 14033 Caen',
	phone: '02 31 06 31 06',
	contact_infos: '')
caen.save!
# sleep(2)
clermontF = Hospital.new(name: 'CHU Clermont-Ferrand',
	address: '58 rue Montalembert, 63003 Clermont-Ferrand',
	phone: '04 73 750 750',
	contact_infos: '')
clermontF.save!
# sleep(2)
dijon = Hospital.new(name: 'CHU Dijon Bourgogne',
	address: '1 Boulevard Jeanne d\'Arc, 21000 Dijon',
	phone: '03 80 29 30 31',
	contact_infos: '')
dijon.save!
# sleep(2)
grenoble = Hospital.new(name: 'CHU Grenoble Alpes',
	address: 'Avenue Maquis du Grésivaudan, 38700 La Tronche',
	phone: '04 76 76 75 75',
	contact_infos: '')
grenoble.save!
# sleep(2)
# reunion = Hospital.new(name: 'CHU La Réunion',
# 	address: 'Allée des topazes, 97400 Saint Denis',
# 	phone: '+33 (2) 62 90 50 50 ',
# 	contact_infos: '')
# reunion.save!
# sleep(2)
lille = Hospital.new(name: 'CHU Lille',
	address: '2 avenue Oscar Lambret, 59000 Lille',
	phone: '03 20 44 59 62',
	contact_infos: '')
lille.save!
# sleep(2)
limoges = Hospital.new(name: 'CHU Limoges',
	address: '2 avenue Martin Luther-King, 87000 Limoges',
	phone: '05 55 05 55 55',
	contact_infos: '')
limoges.save!
# sleep(2)
lyon = Hospital.new(name: 'Hospices Civils de Lyon',
	address: '3 Quai des Célestins, 69002 Lyon',
	phone: '0825 0825 69',
	contact_infos: '')
lyon.save!
# sleep(2)
marseille = Hospital.new(name: 'Assistance Publique - Hôpitaux de Marseille',
	address: '80 rue Brochier, 13000 Marseille',
	phone: '04 91 38 00 00',
	contact_infos: '')
marseille.save!
# sleep(2)
# martinique = Hospital.new(name: 'CHU de Martinique',
# 	address: 'Centre Hospitalier Fort-de-France 97200, Martinique',
# 	phone: '05 96 55 20 00',
# 	contact_infos: '')
# martinique.save!
# sleep(2)
metz = Hospital.new(name: 'CHR Metz-Thionville',
	address: '1 Rue du Friscaty, 57100 Thionville',
	phone: 'Metz : 03 87 55 31 31 - Thionville : 03 82 55 82 55',
	contact_infos: '')
metz.save!
# sleep(2)
montpellier = Hospital.new(name: 'CHU Montpellier',
	address: '191 avenue du doyen Gaston Giraud, 34000 MONTPELLIER',
	phone: '04 67 33 67 33',
	contact_infos: '')
montpellier.save!
# sleep(2)
nancy = Hospital.new(name: 'CHRU Nancy',
	address: '29 avenue Maréchal de Lattre de Tassigny, 54000 NANCY',
	phone: '03 83 85 85 85',
	contact_infos: '')
nancy.save!
# sleep(2)
nantes = Hospital.new(
    name: 'CHU de Nantes',
    address: "5 Allée de l'Île Gloriette, 44093 Nantes",
    contact_infos: 'Dr Richard, Service réanimation, 4ème étage',
    phone: '04 05 06 07 08'
    )
nantes.save!
sleep(2)
nice = Hospital.new(name: 'CHU Nice',
	address: '4 avenue de la Reine Victoria, 06000 Nice',
	phone: '04 92 03 77 77',
	contact_infos: '')
nice.save!
# sleep(2)
nimes = Hospital.new(name: 'CHU Nîmes',
	address: 'Rue du Professeur Debré, 30907 Nîmes',
	phone: '04 66 68 68 68',
	contact_infos: '')
nimes.save!
# sleep(2)
orleans = Hospital.new(name: 'CHR Orléans',
	address: '14 avenue de l\'hôpital, 45000 Orléans',
	phone: '02 38 51 44 44',
	contact_infos: '')
orleans.save!
# sleep(2)
paris = Hospital.new(name: 'Assistance Publique - Hôpitaux de Paris',
	address: '3 avenue Victoria, 75001 Paris',
	phone: '01 40 27 30 00',
	contact_infos: '')
paris.save!
# sleep(2)
# pointe = Hospital.new(name: 'CHU Pointe-à-Pitre',
# 	address: 'CHU Pointe-à-Pitre',
# 	phone: '05 90 89 16 63',
# 	contact_infos: '')
# pointe.save!
sleep(2)
poitiers = Hospital.new(name: 'CHU Poitiers',
	address: '2 rue de la Milétrie, 86000 POITIERS ',
	phone: '05 49 44 44 44',
	contact_infos: '')
poitiers.save!
# sleep(2)
reims = Hospital.new(name: 'CHU Reims',
	address: '45 rue Cognacq-Jay, 51000 Reims',
	phone: '03 26 78 78 78',
	contact_infos: '')
reims.save!
# sleep(2)
rennes = Hospital.new(name: 'CHU Rennes',
	address: '2 rue Henri Le Guilloux, 35000 RENNES',
	phone: '02 99 28 43 21',
	contact_infos: '')
rennes.save!
# sleep(2)
rouen = Hospital.new(name: 'CHU Rouen',
	address: '1 rue de Germont, 76000 Rouen',
	phone: '02 32 88 89 90',
	contact_infos: '')
rouen.save!
# sleep(2)
etienne = Hospital.new(name: 'CHU Saint-Etienne',
	address: 'Avenue Albert Raimond, 42270 Saint-Priest-en-Jarez',
	phone: '04 77 82 80 00',
	contact_infos: '')
etienne.save!
# sleep(2)
strasbourg = Hospital.new(name: 'CHU Strasbourg',
	address: '1 place de l’hôpital, 67000 Strasbourg',
	phone: '03 88 11 67 68',
	contact_infos: '')
strasbourg.save!
# sleep(2)
toulouse = Hospital.new(name: 'CHU Toulouse',
	address: '2 rue viguerie, 31000 Toulouse ',
	phone: '05 61 77 22 33',
	contact_infos: '')
toulouse.save!
# sleep(2)
tours = Hospital.new(name: 'CHU Tours',
	address: '2 Boulevard Tonnellé, 37000 Tours',
	phone: '02 47 47 47 47',
	contact_infos: '')
tours.save!

puts "#{Hospital.count} hospitals imported."

puts "-> Start Beds"
FreeBed.create(
	hospital: nantes,
	number:25)
FreeBed.create(
	hospital: nantes,
	number:24)
FreeBed.create(
	hospital: nantes,
	number:23)
FreeBed.create(
	hospital: nantes,
	number:22)
FreeBed.create(
	hospital: nantes,
	number:21)
FreeBed.create(
	hospital: tours,
	number:10)

puts "#{FreeBed.count} beds imported."
puts 'End Feeds'
