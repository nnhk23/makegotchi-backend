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
        "hunger_rate": 30,
        # 30 seconds
        "sleepy_rate": 600,
        # 600 seconds (10mins)
        "dirt_rate": 120,
        # 120 seconds (2 mins)
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/c/c2/Kikitchimix.png",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/1/17/Kikitchi_behind.png"
    },
    {
        "personality": "Peppy",
        "species": "Mametchi",
        "hunger_rate": 30,
        # 30 seconds
        "sleepy_rate": 600,
        # 600 seconds (10mins)
        "dirt_rate": 120,
        # 120 seconds (2 mins)
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/d/d0/Mametchi_tah.png",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/3/37/03_Mametchi.svg"
    },
    {
        "personality": "Peppy",
        "species": "Lovelitchi",
        "hunger_rate": 30,
        # 30 seconds
        "sleepy_rate": 600,
        # 600 seconds (10mins)
        "dirt_rate": 120,
        # 120 seconds (2 mins)
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/4/41/Lovelin_Blue.png",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/b/bb/Lovelitchi_blue_large.png"
    },
    {
        "personality": "Peppy",
        "species": "Nyatchi",
        "hunger_rate": 30,
        # 30 seconds
        "sleepy_rate": 600,
        # 600 seconds (10mins)
        "dirt_rate": 120,
        # 120 seconds (2 mins)
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/6/67/Nyatchi_original.gif",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/c/c4/Nyatchi.png"
    },
    {
        "personality": "Lazy",
        "species": "Kuchipatchi",
        "hunger_rate": 30,
        # 30 seconds
        "sleepy_rate": 600,
        # 600 seconds (10mins)
        "dirt_rate": 120,
        # 120 seconds (2 mins)
        "img_icon": "https://i.pinimg.com/originals/94/97/df/9497df54da7c5e60842e7cdad36645f3.png",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/5/53/Kuchipatchi.PNG"
    },
    {
        "personality": "Cranky",
        "species": "KuroMametchi",
        "hunger_rate": 30,
        # 30 seconds
        "sleepy_rate": 600,
        # 600 seconds (10mins)
        "dirt_rate": 120,
        # 120 seconds (2 mins)
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/2/24/Kuromametchim%21x.png",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/6/68/Kuromametchi_blue.PNG"
    },
    {
        "personality": "Peppy",
        "species": "Melodytchi",
        "hunger_rate": 30,
        # 30 seconds
        "sleepy_rate": 600,
        # 600 seconds (10mins)
        "dirt_rate": 120,
        # 120 seconds (2 mins)
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/e/e9/ID_Melodytchi.PNG",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/4/41/Melodytchi_anime_pose.png"
    },
    {
        "personality": "Lazy",
        "species": "Mimitchi",
        "hunger_rate": 30,
        # 30 seconds
        "sleepy_rate": 600,
        # 600 seconds (10mins)
        "dirt_rate": 120,
        # 120 seconds (2 mins)
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/5/54/Mimitchi_reading.gif",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/9/98/Mimitchi_anime.PNG"
    },
    {
        "personality": "Peppy",
        "species": "Ginjirotchi",
        "hunger_rate": 30,
        # 30 seconds
        "sleepy_rate": 600,
        # 600 seconds (10mins)
        "dirt_rate": 120,
        # 120 seconds (2 mins)
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/b/bd/Ginjirotchi_tah.png",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/9/91/Ginjirotchi_blue.png"
    }
]
PET.map{|pet|
    Pet.create(pet)
}

# cranky ==> get hungry faster, require more care.
# peppy ==> need less sleeping time, a good starter pet.
# lazy ==> get sleepy quick and doesn't require much care, get hungry every 30s.
# happiness score should be in user pet model, start from 100.