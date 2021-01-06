# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all


PET = [
    {
        "personality": "Lazy",
        "species": "Kikitchi",
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/c/c2/Kikitchimix.png",
        "price": 100,
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/1/17/Kikitchi_behind.png"
    },
    {
        "personality": "Peppy",
        "species": "Mametchi",
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/d/d0/Mametchi_tah.png",
        "price": 200,
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/3/37/03_Mametchi.svg"
    },
    {
        "personality": "Peppy",
        "species": "Lovelitchi",
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/4/41/Lovelin_Blue.png",
        "price": 400,
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/b/bb/Lovelitchi_blue_large.png"
    },
    {
        "personality": "Peppy",
        "species": "Nyatchi",
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/6/67/Nyatchi_original.gif",
        "price": 200,
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/c/c4/Nyatchi.png"
    },
    {
        "personality": "Lazy",
        "species": "Kuchipatchi",
        "img_icon": "https://i.pinimg.com/originals/94/97/df/9497df54da7c5e60842e7cdad36645f3.png",
        "price": 200,
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/5/53/Kuchipatchi.PNG"
    },
    {
        "personality": "Cranky",
        "species": "KuroMametchi",
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/2/24/Kuromametchim%21x.png",
        "price": 500,
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/6/68/Kuromametchi_blue.PNG"
    },
    {
        "personality": "Peppy",
        "species": "Melodytchi",
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/e/e9/ID_Melodytchi.PNG",
        "price": 400,
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/4/41/Melodytchi_anime_pose.png"
    },
    {
        "personality": "Lazy",
        "species": "Mimitchi",
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/5/54/Mimitchi_reading.gif",
        "price": 100,
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/9/98/Mimitchi_anime.PNG"
    },
    {
        "personality": "Peppy",
        "species": "Ginjirotchi",
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/b/bd/Ginjirotchi_tah.png",
        "price": 100,
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/9/91/Ginjirotchi_blue.png"
    },
    {
        "personality": "Lazy",
        "species": "Doraemon",
        "img_icon": "https://c.tenor.com/I-6EAclS024AAAAj/doraemon-sleeping.gif",
        "price": 400,
        "img_url": "https://c.tenor.com/BpKxlZSGHrcAAAAj/doraemon.gif"
    },
    {
        "personality": "Peppy",
        "species": "Pusheen",
        "img_icon": "https://media.tenor.com/images/ffb540df77c6f990ae8a0b29a3997676/tenor.gif",
        "price": 400,
        "img_url": "https://media.tenor.com/images/6138bb17096eece08121c29266ee507f/tenor.gif"
    },
    {
        "personality": "Peppy",
        "species": "Nyan Cat",
        "img_icon": "https://media.tenor.com/images/9d07a1dba684c1c56b54e15793d8f498/tenor.gif",
        "price": 400,
        "img_url": "https://media.tenor.com/images/5bfc19448db9b65da2c88edebf80cfd5/tenor.gif"
    }
]
PET.map{|pet|
    # byebug
    if pet[:personality] === 'Peppy'
        pet[:hunger_rate] = 60
        pet[:sleepy_rate] = 400
        pet[:dirt_rate] = 150
    elsif pet[:personality] === 'Cranky'
        pet[:hunger_rate] = 30
        pet[:sleepy_rate] = 200
        pet[:dirt_rate] = 100
    elsif pet[:personality] === 'Lazy'
        pet[:hunger_rate] = 70
        pet[:sleepy_rate] = 600
        pet[:dirt_rate] = 130
    end
    Pet.create(pet)
}
