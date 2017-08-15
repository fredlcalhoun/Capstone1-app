# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Ralph Townsend", email: "rtownsend9@gmail.com", password: "password", address: "3224 S. New Orleans St., San Francisco, California")
User.create(name: "Shelia Rhymes", email: "shrhymes11@yahoo.com", password: "password", address: "17323 S. Oak Park Ave., Tinley Park, Illinois")
User.create(name: "Nate Hampton", email: "natehamp56@yahoo.com", password: "password", address: "7632 W. Longwood Ave., Denver, Colorado")

Pet.create(user_id: 3, lost_or_found: "lost", name: "Alvin", animal: "dog", breed: "bulldog", color: "beige", city: "Denver", state: "Colorado", neighborhood: "Highland", description: "Alivn is a friendly two year old who got loose from his leash while tied to a railing in front of Jason's coffee shop in the Highland's neighborhood of Denver. Please help me find Alvin.", time: Time.now)
Pet.create(user_id: 1, lost_or_found: "lost", name: "Max", animal: "dog", breed: "beagle", color: "brown, white", city: "San Francisco", state: "California", neighborhood: "Mission Bay", description: "Max broke out of his fence, and is wondering around somewhere. Please help me find Max.", time: Time.now)
Pet.create(user_id: 2, lost_or_found: "found", name: "Ivory", animal: "cat", breed: "tabby", color: "off-white", city: "Tinley Park", state: "Illinois" neighborhood: "Fernway", description: "Thank you all very much for finding Ivory. She is doing fine now.", time: Time.now)
Pet.create(user_id: 7, lost_or_found: "lost", name: "Zoey",  animal: "dog", breed: "cocker retriever", color: "tan", city: "Fort Lauderdale", state: "Florida", neighborhood: "Shady Banks", description: "My Vicky somehow got out of the backyard fence, and has went off somewhere. Please help my find Vicky soon.", time: Time.now) 
Pet.create(user_id: 5, lost_or_found: "found", animal: "cat", breed: "pixie bob", color: "grayish-black", city: "Chesterfield", state: "Missouri", neighborhood: "Greenfield Village", description: "I ran across this cutie cat just hanging out in front of Starbuck's in the Greenfield Village neighborhood. Please contact me if she belongs to you.", time: Time.now)  
Pet.create(user_id: 9, lost_or_found: "found", animal: "cat", breed: "tabby",  color: "white, orange spots", city: "Wichita", state: "Kansas", neighborhood: "Orchard Breeze", description: "This fellow appeared to be scared and lost in an alley. Let me know if this is your little guy.", time: Time.now)
Pet.create(user_id: 11, lost_or_found: "lost", name: "Cody", animal: "dog", breed: "boston terrier", color: "black, white",  city: "Lincoln", state: "Nebraska", neighborhood: "Arnold Heights", description: "My dog Cody got out of the dog park he was playing at, and is lost somewhere. Please help me find Cody.", time: Time.now) 
Pet.create(user_id: 12, lost_or_found: "found", animal: "dog", breed: "boston terrier", color: "black, white", city: "Lincoln", state: "Nebraska", neighborhood: "Arnold Heights", description: "Seen this little guy hanging out around Golf park by himself. Please contact me if he belongs to you.", time: Time.now) 
Pet.create(user_id: 6, lost_or_found: "found", animal: "dog", breed: "beagle mix", color: "brown, black", city: "San Diego", state: "California", neighborhood: "Balboa Park", description: "I seen this beagle sitting in front of the doorway at Ace's hardware store, and he was friendly enough for me to take him home. Please contact me if he belongs to you.", time: Time.now) 
Pet.create(user_id: 4, lost_or_found: "found", animal: "cat", breed: "tabby", color: "off-white", city: "Tinley Park", state: "Illinois",neighborhood: "Fernway", description: "I found this white angel next to a shopping cart in the Jewel's parking lot. I holding her if she is yours. Please contact me.", time: Time.now)  
Pet.create(user_id: 13, lost_or_found: "lost", name: "Riley", animal: "dog", breed: "husky", color: "white, black", city: "Seattle", state: "Washington", neighborhood: "Pioneer Square", description: "This is Riley, and she got loose from her leash, and has walked off somewhere. Please, if you seen Riley, please let me know. Thank you.", time: Time.now)  
Pet.create(user_id: 14, lost_or_found: "found", animal: "dog", breed: "husky", color: "white, black", city: "Seattle", state: "Washington",  neighborhood: "Pioneer Square", description: "I saw this beautiful husky sniffing around in front of Mel's Cafe'. She was friendly enough to let me bring her home. Please contact me if she belongs to you.", time: Time.now) 
Pet.create(user_id: 10, lost_or_found: "lost", name: "Emma", animal: "cat", breed: "tabby", color: "tan, orange", city: "New York City" state: "New York",  neighborhood: "Upper East Side",  description: "This is Emma, and she climbed out of the window, and I have not seen her since. Please contact me if you see Emma. Thank you.", time: Time.now) 
Pet.create(user_id: 8, lost_or_found: "found", animal: "dog", breed: "bulldog", color: "beige", city: "Denver", state: "Colorado",  neighborhood: "Highland", description: "I came out the grocery store, and guess who was leaning us against my bike? This bulldog was friendly enough to let me take him home. Please contact me if you are the owner.", time: Time.now)


Image.create(url: "https://www.dogbreedinfo.com/images17/FrenchBulldogHarley8months.JPG", pet_id: 1)
Image.create(url: "http://www.mooseyscountrygarden.com/cats-dogs/cat-beautiful-white.jpg", pet_id: 3)
Image.create(url: "http://www.funchap.com/wp-content/uploads/2014/05/small-dog.jpg", pet_id: 2)
Image.create(url: "http://img.lovpho.com/anh/2016/26-3/golden-cocker-retriever-full-grown-a-puppy-that-looks-like-a-puppy-forever-i-want-a-forever-puppy-puppy-forever-animals-dogs-full-grown-golden-cocker-retriever-puppys-grown-golden-forever-puppy-retrie.jpg", pet_id: 4)
Image.create(url: "https://upload.wikimedia.org/wikipedia/commons/0/0a/Tortoiseshell_singapore_stray_cat.jpg", pet_id: 5)
Image.create(url: "http://www.asergeev.com/p/xl-2013-1206-06/doha_musheirib_qatar-sneaking_stray_cat_musheirib_area.jpg", pet_id: 6)
Image.create(url: "http://az616578.vo.msecnd.net/files/2016/03/07/6359296760565335581045924475_boston-terrier5.jpg", pet_id: 7)
Image.create(url: "https://s-media-cache-ak0.pinimg.com/736xba/72c8ba8be03416d20734358a885ecdf8--boston-terrier-love-boston-terriers.jpg", pet_id: 8)
Image.create(url: "http://www.albany.com/dog-talk/wp-content/uploads/sites/78/2011/11/stray20dog2.jpg", pet_id: 9)
Image.create(url: "http://www.clevelandseniors.com/images/petfun/cat-maggie-may-1.jpg", pet_id: 10)
Image.create(url: "https://www.dogbreedinfo.com/images24/SiberianHusky3YearsOldPurebredSireNamedHusky3YearsOld.JPG", pet_id: 11)
Image.create(url: "http://photos.lostdogs.ie/lost-dog-on-04-apr-2014-in-clontarf-dublin-.jpg", pet_id: 12)
Image.create(url: "https://s-media-cache-ak0.pinimg.com/736x/07/d2/25/07d225d0c1b6cd72cdeae0f93b2cebd8--eating-bananas-cat-gif.jpg", pet_id: 13)
Image.create(url: "http://www.frenchieporvous.org/wp-content/uploads/2015/06/cookie.jpeg", pet_id: 14)