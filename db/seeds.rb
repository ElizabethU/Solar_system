# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bodies = Body.create([{name: "sol", diameter: 1, color: 'ffcc00', x: 0, y: 0, z: 0, current: true}, {name: "mercury", diameter: .2, color: 'aba9aa', x: 0, y: 0, z: 0, current: true}, {name: "venus", diameter: .4, color: 'e0f7a6', x: 0, y: 0, z: 0, current: true},
  {name: "earth", diameter: .4, color: '0077ff', x: 0, y: 0, z: 0, current: true},
  {name: "mars", diameter: .3, color: 'd6965e', x: 0, y: 0, z: 0, current: true},
  {name: "jupiter", diameter: .6, color: 'faa161', x: 0, y: 0, z: 0, current: true},
  {name: "saturn", diameter: .5, color: 'd9ba73', x: 0, y: 0, z: 0, current: true},
  {name: "uranus", diameter: .3, color: 'a7c2bd', x: 0, y: 0, z: 0, current: true},
  {name: "neptune", diameter: .3, color: '829dd1', x: 0, y: 0, z: 0, current: true}])