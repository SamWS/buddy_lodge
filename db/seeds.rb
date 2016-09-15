# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Listing.destroy_all

u = User.new
u.name = "Ruby"
u.surname = "Hooke"
u.gender = "female"
u.email = "ruby@mail.com"
u.location = "10 Baker Street Mayfield New South Wales Australia"
u.birthdate = "1988-05-23"
u.password = "passwordruby"
u.about = "Hi! My new husband and I are taking a travelling/working honeymoon. We love all animals and are happy to go for walks and bath as needed."
u.save

u1 = User.new
u1.name = "Kathleen"
u1.surname = "West-Sooby"
u1.gender = "female"
u1.email = "kathy@mail.com"
u1.location = "94 Rae Crescent Kotara South New South Wales Australia"
u1.birthdate = "1959-06-01"
u1.password = "passwordkathy"
u1.about = "Hi! I'm planning a casual getaway for myself but would love a fluffy companion to come home to. I can do short walks but have a tricky knee so I can't do long walks."
u1.save

u2 = User.new
u2.name = "Wayne"
u2.surname = "Smith"
u2.gender = "male"
u2.email = "wayne@mail.com"
u2.location = "58 Wimbledon Grove Garden Suburb New South Wales Australia"
u2.birthdate = "1964-09-16"
u2.password = "passwordwayne"
u2.about = "I'm travelling for work and looking for a place to stay. I am confident with animals but won't have time for high-maintenance critters."
u2.save

u3 = User.new
u3.name = "Lucy"
u3.surname = "Rosser"
u3.gender = "female"
u3.email = "lucy@mail.com"
u3.location = "35 Broadmeadow Road Broadmeadow New South Wales Australia"
u3.birthdate = "1989-11-07"
u3.password = "passwordlucy"
u3.about = "Hi! I'm in the area for uni placement. I would love someone fluffy to come home to! I'm happy to do walks, medication and snuggles."
u3.save

u4 = User.new
u4.name = "Kelly"
u4.surname = "Hennessy"
u4.gender = "female"
u4.email = "kelly@mail.com"
u4.location = "10 Ninth Street Adamstown New South Wales Australia"
u4.birthdate = "1989-12-31"
u4.password = "passwordkelly"
u4.about = "I need short term accommodation between rentals. I have had pets all my life and am comfortable caring for dogs, cats, birds, fish and reptiles"
u4.save

u5 = User.new
u5.name = "Stephen"
u5.surname = "West-Sooby"
u5.gender = "male"
u5.email = "stephen@mail.com"
u5.location = "69 Griffiths Road New Lambton New South Wales Australia"
u5.birthdate = "1959-06-01"
u5.password = "passwordstephen"
u5.about = "Hey I'm taking a few weeks off work and would love to be close to the beach. Puppers are welcome to join me, also happy to take care of other animals in the house."
u5.save

u6 = User.new
u6.name = "Eric"
u6.surname = "Halfabee"
u6.gender = "male"
u6.email = "eric@mail.com"
u6.location = "5 Currey Street Merewether New South Wales Australia"
u6.birthdate = "1976-10-01"
u6.password = "passworderic"
u6.about = "Hi, needing a bit of space from my partner so just looking for some short term accommodation."
u6.save

u7 = User.new
u7.name = "Ellen"
u7.surname = "Brown"
u7.gender = "female"
u7.email = "wayne@mail.com"
u7.location = "12 Broome Street Fletcher New South Wales Australia"
u7.birthdate = "1998-02-05"
u7.password = "passwordellen"
u7.about = "Hey I have a few weeks of work off and was hoping to spend some time by the beach."
u7.save

u8 = User.new
u8.name = "George"
u8.surname = "Thornton"
u8.gender = "male"
u8.email = "george@mail.com"
u8.location = "8 Bent Street Maitland New South Wales Australia"
u8.birthdate = "1971-02-05"
u8.password = "passwordgeorge"
u8.about = "I have a placement with uni coming up and would love to be a bit closer. All animals welcome as long as they're happy to have cuddles when I'm home!"
u8.save

u9 = User.new
u9.name = "Cam"
u9.surname = "Drooby"
u9.gender = "male"
u9.email = "cam@mail.com"
u9.location = "1 Targo Close Rutherford New South Wales Australia"
u9.birthdate = "1980-02-02"
u9.password = "passwordcam"
u9.about = "I run a few cafes throughout the hunter valley/lake Macquarie region."
u9.save

l = Listing.new
l.address = "19 Stokes Street Redhead New South Wales Australia"
l.date = "01/12/2016 - 01/01/17"
l.user_id = u.id
l.pets.new(name: "Sam", species: "dog", age: 8, describe: "This is my dog, Sam. I love him lots and need someone to look after him while I'm travelling abroad. I will be gone for a full year almost, so this is a big booking. I'd love to hear from you.", avatar: "http://www.workingdogrescue.com.au/wp-content/uploads/2010/10/DSCF0208-Large-2.jpg")
l.house_images.new(image: "http://static.stayz.com.au/property/image/11/83/19/img_118319_8924e54293653ba8500dd41d8b3093ba_400x300.jpg")
l.save

l1 = Listing.new
l1.address = "3 Luskin Way Belmont North New South Wales Australia"
l1.date = "14/11/2016 - 14/12/2016"
l1.user_id = u1.id
l1.pets.new(name: "Barney", species: "Lizzard", age: 1, describe: "Barney is basically a lump in a tank. He just needs a cricket for dinner and someone to make sure his heat lamp stays on. No Hassle at all.", avatar: "https://upload.wikimedia.org/wikipedia/commons/1/18/Bartagame_fcm.jpg")
l1.house_images.new(image: "http://www.qarmazi.com/5/2015/07/new-small-brick-homes-with-nice-small-brick-house-two-room-brick-house-that-has-nice-small-home-pics.jpg")
l1.save

l2 = Listing.new
l2.address = "20 Chardonnay Court Eleebana New South wales Australia"
l2.date = "10/12/2016 - 20/12/2016"
l2.user_id = u2.id
l2.pets.new(name: "Amy and Friends", species: "Chickens", age: 1, describe: "I have a chicken coop in the back yard. All they need in daily food and water.", avatar: "http://clv.h-cdn.co/assets/15/25/980x648/9-coop28.jpg")
l2.house_images.new(image: "https://s-media-cache-ak0.pinimg.com/236x/4a/1b/c0/4a1bc06b9cdf8d4ca4ea5453e3d14acc.jpg")
l2.save

l3 = Listing.new
l3.address = "29 Princeton Avenue Kotara New South Wales Australia"
l3.date = "10/01/2017 - 01/02/2017"
l3.user_id = u3.id
l3.pets.new(name: "Fred", species: "Cat", age: 9, describe: "Fred is a low-maintenance love bug. He's an old man so he likes his quiet time in a sun beam, but will ask you for a cuddle too. Fred has daily medication that just goes in his food.", avatar: "http://wamiz.co.uk/wp-content/uploads/2015/01/old-cat-1.jpg")
l3.house_images.new(image: "http://upload.wikimedia.org/wikipedia/commons/d/d4/Single-family_home2.jpg")
l3.save

l4 = Listing.new
l4.address = "7 Josling Street Kotara South New South Wales Australia"
l4.date = "10/01/2017 - 01/02/2017"
l4.user_id = u4.id
l4.pets.new(name: "Amy and Joe", species: "Dog", age: 4, describe: "Amy and Joe are my 2 Whippets. They love a cuddle and a daily walk. They are very fridndly and would love to go to the park with you!", avatar: "http://www.dogarium.pl/wp-content/uploads/2014/09/whippet-Dogarium-2.jpg")
l4.house_images.new(image: "http://www.trepryor.com/media/Louisville/Middletown/middletown_home4_lg.jpg")
l4.save

l5 = Listing.new
l5.address = "17 Macquarie Street Merewether New South Wales Australia"
l5.date = "01/06/2017 - 01/07/2017"
l5.user_id = u5.id
l5.pets.new(name: "Meatpie", species: "dog", age: 2, describe: "Meatpie is a chubby little pug on a diet. Needs love and someone who won't give him (too many) extra treats.", avatar: "https://upload.wikimedia.org/wikipedia/commons/7/7f/Pug_portrait.jpg")
l5.house_images.new(image: "http://www.hotel-r.net/im/hotel/cz/woodhouse-7.jpg")
l5.save

l6 = Listing.new
l6.address = "24 Kahibah Road Highfields New South Wales Australia"
l6.date = "15/04/2017 - 25/04/2017"
l6.user_id = u6.id
l6.pets.new(name: "Pepper", species: "parrot", age: 1, describe: "Pepper is a good boy. He likes to have some time to roam the house (all windows and doors closed please) and will happily sit on your shoulder for a chat.", avatar: "https://upload.wikimedia.org/wikipedia/commons/e/ed/Ara_macao_-on_a_small_bicycle-8.jpg")
l6.house_images.new(image: "http://gpsescrow.com/wp-content/uploads/2012/09/upside-down-house1.jpg")
l6.save

l7 = Listing.new
l7.address = "7 Jennings Street Gateshead New South Wales Australia"
l7.date = "14/03/2017 - 20/03/2017"
l7.user_id = u7.id
l7.pets.new(name: "Fluffy", species: "snake", age: 1, describe: "Fluffy is a chill dude happy to hang out in his tank. You can hole him for a bit if you like, but he doesn't need it.", avatar: "https://upload.wikimedia.org/wikipedia/commons/f/fb/Big_Sur_Snake.JPG")
l7.house_images.new(image: "http://wallpapercave.com/wp/wObWxmw.jpg")
l7.save

l8 = Listing.new
l8.address = "11 Victoria Road Tingara Heights New South Wales Australia"
l8.date = "14/02/2017 - 20/03/2017"
l8.user_id = u8.id
l8.pets.new(name: "Greg", species: "rabbit", age: 3, describe: "Greg is a special little lady who's gender was mistaken for a while. She loves a cuddle and fresh green veggies.", avatar: "https://upload.wikimedia.org/wikipedia/commons/3/37/Oryctolagus_cuniculus_Tasmania_2.jpg")
l8.house_images.new(image: "http://www.bolumrehberi.com/images/tv-show/House-MD/dr_gregory_house_wallpaper_1920x1200_1.jpg")
l8.save

l9 = Listing.new
l9.address = "23 Cherry Street Windale New South Wales Australia"
l9.date = "20/12/2016 - 05/01/2017"
l9.user_id = u9.id
l9.pets.new(name: "Julie", species: "cat", age: 2, describe: "Julie is a playful young lady. She's always up for a cuddle.", avatar: "http://www.rd.com/wp-content/uploads/sites/2/2016/04/01-cat-wants-to-tell-you-laptop.jpg")
l9.house_images.new(image: "http://i3.mirror.co.uk/incoming/article5743928.ece/ALTERNATES/s1227b/Regina-Georges-Mean-Girls-Mansion-for-sale.jpg")
l9.save
