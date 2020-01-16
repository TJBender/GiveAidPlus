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
j5 = c2.jobs.create(name: "Vet Assistant", hours: 1)
j6 = c3.jobs.create(name: "Server", hours: 1)
j7 = c3.jobs.create(name: "Tutor", hours: 12)
j8 = c2.jobs.create(name: "Event Setup", hours: 1)
j9 = c3.jobs.create(name: "Supply Distributor", hours: 12)
j10 = c2.jobs.create(name: "Movie Stand-In", hours: 1)


# Volunteer Jobs (-this is the join model between jobs and volunteers-)
v1.jobs <<  j2
v1.jobs <<  j10
v1.jobs <<  j4

v2.jobs <<  j3
v2.jobs <<  j6
v2.jobs <<  j10 
v2.jobs <<  j7

v3.jobs <<  j10
v3.jobs <<  j8
v3.jobs <<  j5

v4.jobs <<  j6
v4.jobs <<  j9
v4.jobs <<  j1



