# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'got to seeds'

iago = Basic.create(name: "Iago", age:25, sex: 'male', classs: 'rogue', race: 'elf', height:'6ft')
azatoth = Basic.create(name: "Azatoth", age:25, sex: 'male', classs: 'paladin', race: 'half-orc', height:'7ft')
eilar = Basic.create(name: "Eilar", age:55, sex: 'male', classs: 'sorcerer', race: 'elf', height:'6ft')
long_fang = Basic.create(name: "Long Fang", age:75, sex: 'male', classs: 'fighter', race: 'dwarf', height:'4ft')
ragnar = Basic.create(name: "Ragnar", age:45, sex: 'male', classs: 'druid', race: 'dwarf', height:'4ft')
dia = Basic.create(name: "Dia", age:1500, sex: 'female', classs: 'sorcerer', race: 'human', height:'5ft')

iago.create_skill(strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10)
azatoth.create_skill(strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10)
eilar.create_skill(strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10)
long_fang.create_skill(strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10)
ragnar.create_skill(strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10)
dia.create_skill(strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10)

p 'ran all seeds'
