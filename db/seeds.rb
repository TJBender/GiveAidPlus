# Volunteers
v1 = Volunteer.create(name: "Danny", password: "123", phone_number: "2012222222")
v2 = Volunteer.create(name: "Tiana", password: "123", phone_number: "2012223333")
v3 = Volunteer.create(name: "Babs", password: "123", phone_number: "2014442222")
v4 = Volunteer.create(name: "Jack", password: "123", phone_number: "2015552222")

# Companies
c1 = Company.create(name: "The American Red Cross")
c2 = Company.create(name: "Charity Water")
c3 = Company.create(name: "Make A Wish")

# Jobs
j1 = c1.jobs.create(name: "Receptionist", hours: 4)
j2 = c2.jobs.create(name: "Guest Greeter", hours: 2)
j3 = c3.jobs.create(name: "Bartender", hours: 1)
j4 = c3.jobs.create(name: "Janitor", hours: 12)

# Volunteer Jobs (-this is the join model between jobs and volunteers-)
v1.jobs <<  j1
v2.jobs <<  j2
v3.jobs <<  j3
v2.jobs <<  j4    

