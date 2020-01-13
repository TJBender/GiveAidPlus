# Volunteers
v1 = Volunteer.create(name: "Eva", password: "123", phone_number: "2012222222")
v2 = Volunteer.create(name: "Jim", password: "123", phone_number: "2012223333")
v3 = Volunteer.create(name: "Sue", password: "123", phone_number: "2014442222")
v4 = Volunteer.create(name: "Bob", password: "123", phone_number: "2015552222")

# Companies
c1 = Company.create(name: "Hout Sauce")
c2 = Company.create(name: "Steaks and Things")
c3 = Company.create(name: "Meatballs and Burgers")

# Jobs
j1 = c1.jobs.create(name: "Eat steak", hours: 8)
j2 = c2.jobs.create(name: "Eat beef", hours: 9)
j3 = c3.jobs.create(name: "Eat chicken?", hours: 1)
j4 = c3.jobs.create(name: "Hard ass work", hours: 12)

# Volunteer Jobs (-this is the join model between jobs and volunteers-)
v1.jobs <<  j1
v2.jobs <<  j2
v3.jobs <<  j3
v2.jobs <<  j4    

