# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Athlete.delete_all
Team.delete_all
Sponsor.delete_all
Sponsorship.delete_all

t1 = Team.create({nation:"Germany", size: 4, medals: 20})
t2 = Team.create({nation:"Jamaica", size: 4, medals: 1})
t3 = Team.create({nation:"Switzerland", size: 4, medals: 26})


a1 =Athlete.create({name: "Sanka", team_id: t2.id})
a2=Athlete.create({name: "Hans", team_id: t1.id})
a3 =Athlete.create({name: "Junior Bevil", team_id: t2.id})
a4 =Athlete.create({name: "Josef", team_id: t1.id})
a5 =Athlete.create({name: "Karl", team_id: t3.id})
a6 =Athlete.create({name: "Kurt", team_id: t3.id})

s1 =Sponsor.create({name: "Wrigleys"})
s2 =Sponsor.create({name: "Smirnoff"})
s3 =Sponsor.create({name: "Cornetto"})
s4 =Sponsor.create({name: "Vienetta"})

Sponsorship.create({athlete_id:a1.id, sponsor_id:s1.id})
Sponsorship.create({athlete_id:a2.id, sponsor_id:s1.id})
Sponsorship.create({athlete_id:a2.id, sponsor_id:s3.id})
Sponsorship.create({athlete_id:a2.id, sponsor_id:s2.id})
Sponsorship.create({athlete_id:a3.id, sponsor_id:s1.id})
Sponsorship.create({athlete_id:a3.id, sponsor_id:s4.id})
Sponsorship.create({athlete_id:a4.id, sponsor_id:s1.id})
Sponsorship.create({athlete_id:a5.id, sponsor_id:s1.id})
Sponsorship.create({athlete_id:a5.id, sponsor_id:s2.id})
Sponsorship.create({athlete_id:a6.id, sponsor_id:s3.id})