Gig.delete_all
Venue.delete_all
Album.delete_all
Artist.delete_all

a1 = Artist.create({name: "Modest Mouse"})
a2 = Artist.create({name: "Muse"})
a3 = Artist.create({name: "Eels"})
a4 = Artist.create({name: "Everything Everything"})

Album.create({artist_id: a1.id, name:"Good news for people who like bad news"})
Album.create({artist_id: a1.id, name:"We were dead before the ship even sank"})
Album.create({artist_id: a2.id, name:"Absolution"})
Album.create({artist_id: a3.id, name:"Last Stop: This Town"})
Album.create({artist_id: a4.id, name:"Cough Cough"})

v1 = Venue.create({name: "The Stadium", location: "Hackney"})
v2 = Venue.create({name: "Dive Bar", location: "Milton Keynes"})

Gig.create({price: 10, date:"2016-10-05 19:00", artist_id: a1.id, venue_id: v2.id  })
Gig.create({price: 30, date:"2016-10-12 19:00", artist_id: a2.id, venue_id: v1.id  })
Gig.create({price: 10, date:"2016-11-05 19:00", artist_id: a2.id, venue_id: v2.id  })
Gig.create({price: 10, date:"2016-10-20 19:00", artist_id: a3.id, venue_id: v1.id  })
Gig.create({price: 10, date:"2016-10-22 19:00", artist_id: a4.id, venue_id: v2.id  })


