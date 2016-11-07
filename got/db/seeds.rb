# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create(name: "House of Stark", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20160703180116", region: "The North", motto: "Winter is Coming")

bolton = House.create(name: "House of Bolton", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/d/dd/House-Bolton-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20160312000641", region: "The North", motto: "A Naked Man Has Few Secrets - A Flayed Man, None")

lannister = House.create(name: "House of Lannister", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20151207184048", region: "King's Landing", motto: "A Lannister Always Pays His Debts")

targaryen = House.create(name: "House of Targaryen", img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20151209185148", region: "Bay of Dragons", motto: "Fire and Blood")

stark.characters.create([
  {name: "Jon Snow", age: 28, img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/4/49/Battle_of_the_Bastards_08.jpg/revision/latest/scale-to-width-down/270?cb=20160615184845"},
  {name: "Sansa Stark", age: 19, img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/6/68/Sansa_stark_s6_battle_bastards_infobox.jpg/revision/latest/scale-to-width-down/270?cb=20160807084759"},
  {name: "Arya Stark", age: 17 , img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/a/ad/Arya6x10.png/revision/latest/scale-to-width-down/270?cb=20160629211505"}
  ])

lannister.characters.create([
  {name: "Tyrion", age: 40, img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/9/9d/Tyrion6x082.png/revision/latest/scale-to-width-down/270?cb=20160609061404"},
  {name: "Cersei", age: 43, img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/c/c7/Queen_Cersei_Main_The_winds_of_Winter.jpg/revision/latest/scale-to-width-down/270?cb=20160712032316"},
  {name: "Jaime", age: 43, img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/c/c5/Jaime_s6_Ep08_.jpg/revision/latest/scale-to-width-down/270?cb=20160616044155"}
  ])

bolton.characters.create([
  {name: "Ramsay", age: 22, img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/d/d2/Ramsay_S06E09_RESZIED_FOR_INFOBOX.jpg/revision/latest/scale-to-width-down/270?cb=20160622071734"},
  {name: "Roose", age: 45, img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/c/c8/Roose-S6-Profile.jpg/revision/latest/scale-to-width-down/270?cb=20160801075614"}
  ])

targaryen.characters.create([
  {name: "Daenerys", age: 22, img_url: "http://images5.fanpop.com/image/photos/28900000/Daenerys-Targaryen-house-targaryen-28964959-994-1498.jpg"},
  {name: "Viserys", age: 24, img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/4/46/Viseryspromoheadshot.jpg/revision/latest/scale-to-width-down/270?cb=20160730184148"}
    ])
