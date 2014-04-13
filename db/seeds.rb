# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bodies = Body.create([{name: "mercury", diameter: .2, color: 'aba9aa', x:, y:, z:, current: true}, {name: "venus", diameter: .4, color: 'e0f7a6', x:, y:, z:, current: true},
  {name: "earth", diameter: .4, color: '0077ff', x:, y:, z:, current: true},
  {name: "mars", diameter: .3, color: 'd6965e', x:, y:, z:, current: true},
  {name: "jupiter", diameter: .6, color: 'faa161', x:, y:, z:, current: true},
  {name: "saturn", diameter: .5, color: 'd9ba73', x:, y:, z:, current: true},
  {name: "uranus", diameter: .3, color: 'a7c2bd', x:, y:, z:, current: true},
  {name: "neptune", diameter: .3, color: '829dd1', x:, y:, z:, current: true}])