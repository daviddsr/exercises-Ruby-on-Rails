# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.create name: 'David', city: 'Madrid', zip_code: 28080, country: 'España', street: 'Arroyo de la media legua'
Location.create name: 'Pepito', city: 'Valencia', zip_code: 28030, country: 'España', street: 'Teulada'
Location.create name: 'Paquirrin', city: 'Alicante', zip_code: 28040, country: 'España', street: 'Teresita González'
Location.create name: 'Miguel', city: 'Sevilla', zip_code: 28040, country: 'España', street: 'La luna'
Location.create name: 'Ivan', city: 'Zaragoza', zip_code: 28060, country: 'España', street: 'Olvido'
Location.create name: 'Sara', city: 'Valencia', zip_code: 28050, country: 'España', street: 'Rue del percebe'
Location.create city: 'Málaga', zip_code: 28040, country: 'España', street: 'Cefeo'
Location.create name: 'Jhon Doe', city: 'Washington', zip_code: 28040, country: 'USA', street: 'Long street'
Location.create name: 'Sergio', city: 'Cáceres', zip_code: 28020, country: 'España', street: 'Tablada'
Location.create name: 'Juan', city: 'Madrid', zip_code: 28065, country: 'España', street: 'La Colegiata'
Location.create city: 'Barcelona', zip_code: 28020, country: 'España', street: 'La magdalena'
Location.create name: 'Maria', city: 'Madrid', zip_code: 28065, country: 'España', street: 'esquinazo'


Visit.create  user_name: 'Jhonny', from_date: DateTime.current-4, to_date: DateTime.current-2
Visit.create  user_name: 'Eddy', from_date: DateTime.current-6, to_date: DateTime.current-2
Visit.create  user_name: 'Karl', from_date: DateTime.current-5, to_date: DateTime.current-1
Visit.create  user_name: 'Tom', from_date: DateTime.current-8, to_date: DateTime.current-3
Visit.create  user_name: 'Willy', from_date: DateTime.current-6, to_date: DateTime.current-1