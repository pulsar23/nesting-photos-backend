# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Album.destroy_all
Photo.destroy_all
UserAlbum.destroy_all

sam = User.create(username: "sam", email: "sam21@example.com",password_digest: BCrypt::Password.create('sam'))
bill = User.create(username: "bill", email: "bill50@example.com",password_digest: BCrypt::Password.create('bill'))
mary = User.create(username: "mary", email: "mary16@example.com", password_digest: BCrypt::Password.create('mary'))
beth = User.create(username: "beth", email: "beth25@example.com", password_digest: BCrypt::Password.create('beth'))

beth1_album = Album.create(title: "Wedding", admin_id: 4)
beth2_album = Album.create(title: "Yellowstone", admin_id: 4)
beth3_album = Album.create(title: "Hawaii", admin_id: 4)
mary1_album = Album.create(title: "San Francisco", admin_id: 3)
bill1_album = Album.create(title: "Alcatraz", admin_id: 2)
bill2_album = Album.create(title: "Grand Canyon", admin_id: 2)
sam1_album = Album.create(title: "Alaska", admin_id: 1)


beth1_p1 = Photo.create(title:"Royal Wedding"  , description:"Outside Chapel", location: "Windsor, England", image_url: "https://www.gannett-cdn.com/presto/2018/10/12/USAT/bff80be0-3e69-4487-8027-d815fb413b00-GTY_1051956874.jpg?width=680&height=510&fit=bounds&auto=webp", user_id: 4, album_id: 1)
beth1_p2 = Photo.create(title:"Royal Wedding"  , description:"Wedding Dress", location: "Windsor, England", image_url: "https://media1.s-nbcnews.com/j/newscms/2018_41/1376254/princess-eugenie-royal-wedding-back-today-inline-003-181012_e5675b8433f85f15e82646001ae411bb.fit-760w.jpg", user_id: 4, album_id: 1)
beth2_p1 = Photo.create(title:"Yellowstone River Falls"  , description:"The Grand Canyon of Yellowstone National Park", location: "Yellowstone Grand Canyon", image_url: "https://www.nps.gov/common/uploads/grid_builder/imr/crop1_1/1A1DFCF3-1DD8-B71B-0BA531411585446E.jpg?width=640&quality=90&mode=crop", user_id: 4, album_id: 2)
beth2_p2 = Photo.create(title:"Morning Glory Pool"  , description:"Hot Spring", location: "Old Faithful", image_url: "https://www.nps.gov/common/uploads/grid_builder/imr/crop1_1/51E75DC5-1DD8-B71B-0B2A89004F7AFA66.jpg?width=640&quality=90&mode=crop", user_id: 4, album_id: 2)
beth2_p3 = Photo.create(title:"Bison and calf"  , description:"Bison and calf roaming in Yellowstone", location: "Yellowstone National Park", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMRJEV5mpPtcSoS3ff7g7avHAeUPfRBXk_HNpVXbily1pA1xi6", user_id: 4, album_id: 2)
sam1_p1 = Photo.create(title: "Elk", description: "Scenic view", location: "Denali National Park", image_url: "https://www.terragalleria.com/images/np-alaska/dena52568.jpeg", user_id: 1, album_id: 7)

# beth2_photo = Photo.create(title:""  , description:"", location: "", image_url: "", user_id: 4, album_id: 2)
# beth3_photo = Photo.create(title:"Road to Hana"  , description:"Road to Hana Scenic View", location: "Maui", image_url: "https://www.hawaii-guide.com/images/made/road-to-hana-maui-hawaii_1600_750_85_s_c1_c_c_0_0_1600_750_95_s_c1_c_b_0_0.jpg", user_id: 4, album_id: 3)
# beth3_photo = Photo.create(title:"Welcome Sign"  , description:"Arrival at Hana after long and scenic drive.  Welcome Sign.", location: "Maui", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0d/f4/e0/4e/maui-hana-coast-day-trip.jpg", user_id: 4, album_id: 3)
# beth3_photo = Photo.create(title:"Road to Hana Scenic"  , description:"Scenic drive on road to Hana.  ", location: "", image_url: "https://gypsyguide.com/wp-content/uploads/2017/09/r2h.jpg", user_id: 4, album_id: 3)
# beth3_photo = Photo.create(title:"Black Sand Beach"  , description:"Black Sand Beach with very few visitors today. Good Day!", location: "Hana", image_url: "https://www.to-hawaii.com/maui/beaches/images/waianapanapa/black_sands.jpg", user_id: 4, album_id: 3)

# sam1_photo1 = Photo.create(title:""  , description:"", location: "", image_url: "")
# sam2_photo1 = Photo.create(title:""  , description:"", location: "", image_url: "")
ua1 = UserAlbum.create(user_id: 1, album_id: 7)
ua2 = UserAlbum.create(user_id: 2, album_id: 6)
ua3 = UserAlbum.create(user_id: 2, album_id: 5)
ua4 = UserAlbum.create(user_id: 3, album_id: 4)
ua5 = UserAlbum.create(user_id: 4, album_id: 3)
ua6 = UserAlbum.create(user_id: 4, album_id: 1)
ua7 = UserAlbum.create(user_id: 4, album_id: 2)
