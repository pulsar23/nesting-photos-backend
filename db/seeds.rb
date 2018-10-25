# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserAlbum.destroy_all
Photo.destroy_all
Album.destroy_all
User.destroy_all

beth = User.create(username: "beth", email: "beth25@example.com", password:'beth')
mary = User.create(username: "mary", email: "mary16@example.com", password:'mary')
bill = User.create(username: "bill", email: "bill50@example.com",password:'bill')
sam = User.create(username: "sam", email: "sam21@example.com",password:'sam')


beth1_album = beth.own_albums.create(title: "Wedding")
beth2_album = beth.own_albums.create(title: "Yellowstone")
beth3_album = beth.own_albums.create(title: "Hawaii")
mary1_album = mary.own_albums.create(title: "San Francisco")
bill1_album = bill.own_albums.create(title: "Alcatraz")
bill2_album = bill.own_albums.create(title: "Grand Canyon")
sam1_album = sam.own_albums.create(title: "Alaska")

#Hook up user_album for collaboration.  Then user.photos

photo1 = beth1_album.photos.create(title: "Lady Diana Spencer Royal Wedding", description: "Lady Diana Spencer & Prince Charles", location: "St. Paul's Cathedral, United Kingdom", image_url: "https://www.rd.com/wp-content/uploads/2018/02/wedding-of-prince-charles-and-lady-diana-spencer-london-britain-29-jul-1981.jpg", user_id: beth1_album.admin_id)
photo2 = beth1_album.photos.create(title: "Lady Diana Wedding Dress", description: "Seated with Wedding Dress Train", location: "United Kingdom", image_url: "https://www.hellomagazine.com/imagenes//brides/2014090120744/princess-diana-wedding-dress-going-home/0-110-274/diana1--z.jpg", user_id: beth1_album.admin_id)
photo3 = beth1_album.photos.create(title: "Sarah Ferguson and Prince Andrew Royal Wedding", description: "Sarah Ferguson & Prince Andrew", location: "Westminster Abbey in London, England", image_url: "https://assets.marthastewartweddings.com/styles/wmax-570/d45/sarah-ferguson-prince-andrew-wedding-day-1018/sarah-ferguson-prince-andrew-wedding-day-1018_sq.jpg?itok=oFkUM3q2", user_id: beth1_album.admin_id)
photo4 = beth1_album.photos.create(title: "Kate Middleton Royal Wedding", description: "Kate Middleton and Prince William", location: "Westminster Abbey, London, United Kingdom", image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hbz-prince-william-kate-middleton-wedding-19-gettyimages-113266498-1524755723.jpg", user_id: beth1_album.admin_id)
photo5 = beth1_album.photos.create(title:"Meghan Markle Royal Wedding", description: "Meghan Markle and Prince Harry royal wedding", location: "Windsor Castle, England", image_url: "https://www.telegraph.co.uk/content/dam/fashion/2018/05/19/TELEMMGLPICT000164023396_trans_NvBQzQNjv4Bq4WW-Rcu8eLw2tkZ691Fuma2A9JWjda1H2dZOz94Lfto.jpeg?imwidth=450", user_id: beth1_album.admin_id)
photo6 = beth1_album.photos.create(title:"Meghan Markle Royal Wedding"  , description:"Outside Chapel", location: "Windsor, England", image_url: "https://www.gannett-cdn.com/presto/2018/10/12/USAT/bff80be0-3e69-4487-8027-d815fb413b00-GTY_1051956874.jpg?width=680&height=510&fit=bounds&auto=webp", user_id: beth1_album.admin_id)
photo7 = beth1_album.photos.create(title:"Princess Eugenie Royal Wedding"  , description:"Wedding Dress", location: "Windsor, England", image_url: "https://media1.s-nbcnews.com/j/newscms/2018_41/1376254/princess-eugenie-royal-wedding-back-today-inline-003-181012_e5675b8433f85f15e82646001ae411bb.fit-760w.jpg", user_id: beth1_album.admin_id)
photo8 = beth2_album.photos.create(title:"Yellowstone River Falls"  , description:"The Grand Canyon of Yellowstone National Park", location: "Yellowstone Grand Canyon", image_url: "https://www.nps.gov/common/uploads/grid_builder/imr/crop1_1/1A1DFCF3-1DD8-B71B-0BA531411585446E.jpg?width=640&quality=90&mode=crop", user_id: beth2_album.admin_id)
photo9 = beth2_album.photos.create(title:"Morning Glory Pool"  , description:"Hot Spring", location: "Old Faithful", image_url: "https://www.nps.gov/common/uploads/grid_builder/imr/crop1_1/51E75DC5-1DD8-B71B-0B2A89004F7AFA66.jpg?width=640&quality=90&mode=crop", user_id: beth2_album.admin_id)
photo10 = beth2_album.photos.create(title:"Bison and calf"  , description:"Bison and calf roaming in Yellowstone", location: "Yellowstone National Park", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMRJEV5mpPtcSoS3ff7g7avHAeUPfRBXk_HNpVXbily1pA1xi6", user_id: beth2_album.admin_id)

# beth1_p1 = Photo.create(title:"Royal Wedding"  , description:"Outside Chapel", location: "Windsor, England", image_url: "https://www.gannett-cdn.com/presto/2018/10/12/USAT/bff80be0-3e69-4487-8027-d815fb413b00-GTY_1051956874.jpg?width=680&height=510&fit=bounds&auto=webp", user_id: 4, album_id: 1)
# beth1_p2 = Photo.create(title:"Royal Wedding"  , description:"Wedding Dress", location: "Windsor, England", image_url: "https://media1.s-nbcnews.com/j/newscms/2018_41/1376254/princess-eugenie-royal-wedding-back-today-inline-003-181012_e5675b8433f85f15e82646001ae411bb.fit-760w.jpg", user_id: 4, album_id: 1)
# beth2_p1 = Photo.create(title:"Yellowstone River Falls"  , description:"The Grand Canyon of Yellowstone National Park", location: "Yellowstone Grand Canyon", image_url: "https://www.nps.gov/common/uploads/grid_builder/imr/crop1_1/1A1DFCF3-1DD8-B71B-0BA531411585446E.jpg?width=640&quality=90&mode=crop", user_id: 4, album_id: 2)
# beth2_p2 = Photo.create(title:"Morning Glory Pool"  , description:"Hot Spring", location: "Old Faithful", image_url: "https://www.nps.gov/common/uploads/grid_builder/imr/crop1_1/51E75DC5-1DD8-B71B-0B2A89004F7AFA66.jpg?width=640&quality=90&mode=crop", user_id: 4, album_id: 2)
# beth2_p3 = Photo.create(title:"Bison and calf"  , description:"Bison and calf roaming in Yellowstone", location: "Yellowstone National Park", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMRJEV5mpPtcSoS3ff7g7avHAeUPfRBXk_HNpVXbily1pA1xi6", user_id: 4, album_id: 2)
# sam1_p1 = Photo.create(title: "Elk", description: "Scenic view", location: "Denali National Park", image_url: "https://www.terragalleria.com/images/np-alaska/dena52568.jpeg", user_id: 1, album_id: 7)

# beth2_photo = Photo.create(title:""  , description:"", location: "", image_url: "", user_id: 4, album_id: 2)
# beth3_photo = Photo.create(title:"Road to Hana"  , description:"Road to Hana Scenic View", location: "Maui", image_url: "https://www.hawaii-guide.com/images/made/road-to-hana-maui-hawaii_1600_750_85_s_c1_c_c_0_0_1600_750_95_s_c1_c_b_0_0.jpg", user_id: 4, album_id: 3)
# beth3_photo = Photo.create(title:"Welcome Sign"  , description:"Arrival at Hana after long and scenic drive.  Welcome Sign.", location: "Maui", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0d/f4/e0/4e/maui-hana-coast-day-trip.jpg", user_id: 4, album_id: 3)
# beth3_photo = Photo.create(title:"Road to Hana Scenic"  , description:"Scenic drive on road to Hana.  ", location: "", image_url: "https://gypsyguide.com/wp-content/uploads/2017/09/r2h.jpg", user_id: 4, album_id: 3)
# beth3_photo = Photo.create(title:"Black Sand Beach"  , description:"Black Sand Beach with very few visitors today. Good Day!", location: "Hana", image_url: "https://www.to-hawaii.com/maui/beaches/images/waianapanapa/black_sands.jpg", user_id: 4, album_id: 3)

# sam1_photo1 = Photo.create(title:""  , description:"", location: "", image_url: "")
# sam2_photo1 = Photo.create(title:""  , description:"", location: "", image_url: "")
