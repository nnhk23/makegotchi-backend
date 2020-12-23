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
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/c/c2/Kikitchimix.png/revision/latest/scale-to-width-down/44?cb=20160722103818",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/1/17/Kikitchi_behind.png/revision/latest/scale-to-width-down/340?cb=20110903115321"
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
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/d/d0/Mametchi_tah.png/revision/latest/scale-to-width-down/50?cb=20150511023616",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/3/37/03_Mametchi.svg/revision/latest/scale-to-width-down/203?cb=20111125003832"
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
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/4/41/Lovelin_Blue.png/revision/latest/scale-to-width-down/172?cb=20101026082218",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/8/8d/Lovelitchi_anime.PNG/revision/latest/scale-to-width-down/212?cb=20170729032254"
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
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/6/67/Nyatchi_original.gif/revision/latest/scale-to-width-down/54?cb=20140218023750",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/c/c4/Nyatchi.png/revision/latest/scale-to-width-down/330?cb=20110917023305"
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
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/a/ab/Kuchipatchi_sprite_app1.png/revision/latest?cb=20140311014725",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/5/53/Kuchipatchi.PNG/revision/latest/scale-to-width-down/350?cb=20110917230213"
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
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/2/24/Kuromametchim%21x.png/revision/latest/scale-to-width-down/43?cb=20161129211437",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/6/68/Kuromametchi_blue.PNG/revision/latest/scale-to-width-down/213?cb=20110921100918"
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
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/e/e9/ID_Melodytchi.PNG/revision/latest/scale-to-width-down/23?cb=20110831071614",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/4/41/Melodytchi_anime_pose.png/revision/latest/scale-to-width-down/199?cb=20150913212228"
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
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/5/54/Mimitchi_reading.gif/revision/latest/top-crop/width/220/height/220?cb=20140914170311",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/9/98/Mimitchi_anime.PNG/revision/latest?cb=20150118162441"
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
        "img_icon": "https://static.wikia.nocookie.net/tamagotchi/images/6/68/Ginjirotchi_sprite_app1.png/revision/latest/scale-to-width-down/32?cb=20140311013000",
        "img_url": "https://static.wikia.nocookie.net/tamagotchi/images/9/91/Ginjirotchi_blue.png/revision/latest/scale-to-width-down/350?cb=20111021091258"
    }
]
PET.map{|pet| 
    Pet.create(pet)
}

# cranky ==> get hungry faster, require more care.
# peppy ==> need less sleeping time, a good starter pet.
# lazy ==> get sleepy quick and doesn't require much care, get hungry every 30s.
# happiness score should be in user pet model, start from 100.