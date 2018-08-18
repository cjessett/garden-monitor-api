# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'test@me.com', password: '123')

valve = Valve.create(name: 'valve 1', serial: 'proto_valve', user: user)

sensors = [
  { name: 'sensor 1', serial: 'esp8266', valve: valve, user: user },
  { name: 'sensor 2', serial: 'ss-1', valve: valve, user: user },
]

Sensor.create(sensors)
