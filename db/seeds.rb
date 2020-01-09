# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


v1 = Volunteer.create(name: "Eva", password: "123", phone_number: "2012222222")
v2 = Volunteer.create(name: "Jim", password: "123", phone_number: "2012223333")
v3 = Volunteer.create(name: "Sue", password: "123", phone_number: "2014442222")
v4 = Volunteer.create(name: "Bob", password: "123", phone_number: "2015552222")

c1 = Company.create(name: "Hout Sauce")
c2 = Company.create(name: "Steaks and Things")
c3 = Company.create(name: "Meatballs and Burgers")

j1 = Job.new(name: "Pick Burgers", hours: 4)
j1.volunteer = v1
j1.company = c1
j1.save

j2 = Job.new(name: "Pick Meatballs", hours: 4)
j2.volunteer = v1
j2.company = c1
j2.save