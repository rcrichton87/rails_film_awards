Award.delete_all
Role.delete_all
Actor.delete_all
Film.delete_all

a1 = Actor.create({name: "Nicholas Cage"})
a2 = Actor.create({name: "Cher"})

f1 = Film.create({title: "Leaving Las Vegas"})
f2 = Film.create({title: "Moonstruck"})

r1 = Role.create({actor: a1, film: f1})
r2 = Role.create({actor: a2, film: f2})

Award.create({role: r1, title: "Academy Award - Best Actor"})
Award.create({role: r1, title: "Golden Globe - Best Actor"})

Award.create({role: r2, title: "Academy Award - Best Actress"})
Award.create({role: r2, title: "Golden Globe - Best Actress"})