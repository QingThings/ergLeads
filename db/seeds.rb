# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rails db:seed

Individual.delete_all
Organization.delete_all
Venue.delete_all
Event.delete_all

john = Individual.create(
  first_name: "John",
  last_name: "Doe",
  job_title: "Manager",
  phone: "(555)555-5555"
)

jane = Individual.create(
  first_name: "Jane",
  last_name: "Doe",
  job_title: "VP",
  phone: "(555)555-5555"
)

mario = Individual.create(
  first_name: "Mario",
  last_name: "Sunshine",
  job_title: "Super",
  phone: "(555)555-5555"
)

pipe = Organization.create(
  name: "Green Pipe"
)

play = Organization.create(
  name: "Speedway"
)

kupa = Venue.create(
  name: 'stuff',
  city: "Bowsers",
  state: "Toad Kingdom"
)

toad = Venue.create(
  name: 'stuff',
  city: "Village",
  state: "Toad Kingdom"
)

a_speedway = Venue.create(
  name: 'stuff',
  city: "Columbus",
  state: "OH"
)

john.update(organizations: [play, pipe], venues: [kupa, a_speedway])
mario.update(organizations: [pipe], venues: [kupa, toad])
jane.update(organizations: [play], venues: [a_speedway])

Event.create(
  name: 'Country Dance thing',
  date: 1.week.ago,
  comments: "A bunch of booze and music.",
  venue: a_speedway
)

Event.create(
  name: 'Country Dance II',
  date: 1.week.from_now,
  comments: "Some more bunch of booze and music.",
  venue: a_speedway
)
