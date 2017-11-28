# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "david", email: "david@guest.com", city: "New York, NY", bio: "just a guy", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://cdn.pixabay.com/photo/2017/04/01/21/37/beautiful-2194518_1280.jpg")
User.create(name: "andrew", email: "andrew@guest.com", city: "New York, NY", bio: "just a guy", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://cdn.pixabay.com/photo/2017/04/01/21/37/beautiful-2194518_1280.jpg")
User.create(name: "phil", email: "phil@guest.com", city: "New York, NY", bio: "just a guy", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://cdn.pixabay.com/photo/2017/04/01/21/37/beautiful-2194518_1280.jpg")
User.create(name: "claire", email: "claire@guest.com", city: "New York, NY", bio: "just a guy", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://cdn.pixabay.com/photo/2017/04/01/21/37/beautiful-2194518_1280.jpg")
User.create(name: "alex", email: "alex@guest.com", city: "New York, NY", bio: "just a guy", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://cdn.pixabay.com/photo/2017/04/01/21/37/beautiful-2194518_1280.jpg")
User.create(name: "whitney", email: "whitney@guest.com", city: "New York, NY", bio: "just a guy", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://cdn.pixabay.com/photo/2017/04/01/21/37/beautiful-2194518_1280.jpg")
User.create(name: "elise", email: "elise@guest.com", city: "New York, NY", bio: "just a guy", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://cdn.pixabay.com/photo/2017/04/01/21/37/beautiful-2194518_1280.jpg")


Kitchen.create(title: "a great kitchen", street_address: "70 Clark Street", city: "New York", state: "NY", zipcode: 11201, size: 450, max_guests: 6, base_price: 50, price_per_guest: 10, owner_id: 7,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: false, deep_fryer: true, pressure_cooker: true,
  blurb: "you'll like it", description: "We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.")
Kitchen.create(title: "no kitchen better", street_address: "71 Clark Street", city: "New York", state: "NY", zipcode: 11201, size: 450, max_guests: 6, base_price: 50, price_per_guest: 10, owner_id: 7,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: false, standing_mixer: false, deep_fryer: true, pressure_cooker: true,
  blurb: "a good kitchen at a good price", description: "We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.")
Kitchen.create(title: "a kitchen so good you'll cook yourself", street_address: "72 Clark Street", city: "New York", state: "NY", zipcode: 11201, size: 450, max_guests: 6, base_price: 50, price_per_guest: 10, owner_id: 6,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: true, deep_fryer: true, pressure_cooker: false,
  blurb: "you will like cooking here", description: "We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.")
Kitchen.create(title: "youve never seen such luxury", street_address: "73 Clark Street", city: "New York", state: "NY", zipcode: 11201, size: 450, max_guests: 6, base_price: 50, price_per_guest: 10, owner_id: 5,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: false, deep_fryer: false, pressure_cooker: true,
  blurb: "don't think about any other kitchen", description: "We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.")
Kitchen.create(title: "you will never be happy but you can rent this kitchen", street_address: "74 Clark Street", city: "New York", state: "NY", zipcode: 11201, size: 450, max_guests: 6, base_price: 50, price_per_guest: 10, owner_id: 4,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: false, standing_mixer: true, deep_fryer: true, pressure_cooker: false,
  blurb: "insane things tend to happen in this kitchen ;)", description: "We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.")
Kitchen.create(title: "life is nothing but a rental / rent my kitchen", street_address: "75 Clark Street", city: "New York", state: "NY", zipcode: 11201, size: 450, max_guests: 6, base_price: 50, price_per_guest: 10, owner_id: 3,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: false, deep_fryer: true, pressure_cooker: true,
  blurb: "not a sex dungeon", description: "We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.")
Kitchen.create(title: "nietzsche would have loved this kitchen", street_address: "76 Clark Street", city: "New York", state: "NY", zipcode: 11201, size: 450, max_guests: 6, base_price: 50, price_per_guest: 10, owner_id: 2,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: false, deep_fryer: true, pressure_cooker: true,
  blurb: "...even though he didn't care for cooking per se.", description: "We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.")

KitchenPicture.create(kitchen_id: 1, url: "http://res.cloudinary.com/dwtfwfzsx/image/upload/v1511897313/hrgeuelw54uzj60knkcw.jpg")
KitchenPicture.create(kitchen_id: 2, url: "http://res.cloudinary.com/dwtfwfzsx/image/upload/v1511897313/hrgeuelw54uzj60knkcw.jpg")
KitchenPicture.create(kitchen_id: 3, url: "http://res.cloudinary.com/dwtfwfzsx/image/upload/v1511897313/hrgeuelw54uzj60knkcw.jpg")
KitchenPicture.create(kitchen_id: 4, url: "http://res.cloudinary.com/dwtfwfzsx/image/upload/v1511897313/hrgeuelw54uzj60knkcw.jpg")
KitchenPicture.create(kitchen_id: 5, url: "http://res.cloudinary.com/dwtfwfzsx/image/upload/v1511897313/hrgeuelw54uzj60knkcw.jpg")
KitchenPicture.create(kitchen_id: 6, url: "http://res.cloudinary.com/dwtfwfzsx/image/upload/v1511897313/hrgeuelw54uzj60knkcw.jpg")
KitchenPicture.create(kitchen_id: 7, url: "http://res.cloudinary.com/dwtfwfzsx/image/upload/v1511897313/hrgeuelw54uzj60knkcw.jpg")

Reservation.create(guest_id: 1, kitchen_id: 7, guest_number: 4, date: "2017-11-23")
Reservation.create(guest_id: 2, kitchen_id: 6, guest_number: 4, date: "2017-11-24")
Reservation.create(guest_id: 3, kitchen_id: 5, guest_number: 4, date: "2017-11-25")
Reservation.create(guest_id: 4, kitchen_id: 4, guest_number: 4, date: "2017-11-26")
Reservation.create(guest_id: 5, kitchen_id: 3, guest_number: 4, date: "2017-11-27")
Reservation.create(guest_id: 6, kitchen_id: 2, guest_number: 4, date: "2017-11-28")
Reservation.create(guest_id: 7, kitchen_id: 1, guest_number: 4, date: "2017-11-29")

Reservation.create(guest_id: 1, kitchen_id: 7, guest_number: 4, date: "2017-11-25")
Reservation.create(guest_id: 2, kitchen_id: 6, guest_number: 4, date: "2017-11-26")
Reservation.create(guest_id: 3, kitchen_id: 5, guest_number: 4, date: "2017-11-27")
Reservation.create(guest_id: 4, kitchen_id: 4, guest_number: 4, date: "2017-11-28")
Reservation.create(guest_id: 5, kitchen_id: 3, guest_number: 4, date: "2017-11-29")
Reservation.create(guest_id: 6, kitchen_id: 2, guest_number: 4, date: "2017-11-20")
Reservation.create(guest_id: 7, kitchen_id: 1, guest_number: 4, date: "2017-11-30")

Reservation.create(guest_id: 1, kitchen_id: 7, guest_number: 4, date: "2017-11-27")
Reservation.create(guest_id: 2, kitchen_id: 6, guest_number: 4, date: "2017-11-28")
Reservation.create(guest_id: 3, kitchen_id: 5, guest_number: 4, date: "2017-11-29")
Reservation.create(guest_id: 4, kitchen_id: 4, guest_number: 4, date: "2017-11-30")
Reservation.create(guest_id: 5, kitchen_id: 3, guest_number: 4, date: "2017-11-15")
Reservation.create(guest_id: 6, kitchen_id: 2, guest_number: 4, date: "2017-11-16")
Reservation.create(guest_id: 7, kitchen_id: 1, guest_number: 4, date: "2017-11-17")


KitchenReview.create(kitchen_id: 1, guest_id: 7, stars: 5, review: "I liked this kitchen")
KitchenReview.create(kitchen_id: 2, guest_id: 6, stars: 2, review: "bad kitchen")
KitchenReview.create(kitchen_id: 3, guest_id: 5, stars: 3, review: "I didn't like this kitchen")
KitchenReview.create(kitchen_id: 4, guest_id: 4, stars: 5, review: "Great kitchen")
KitchenReview.create(kitchen_id: 5, guest_id: 3, stars: 5, review: "Super kitchen")
KitchenReview.create(kitchen_id: 6, guest_id: 2, stars: 5, review: "I made love on the floor of this kitchen")
KitchenReview.create(kitchen_id: 7, guest_id: 1, stars: 5, review: "run, don't walk, to rent this kitchen")

GuestReview.create(host_id: 1, guest_id: 7, stars: 4, review: "a good guy")
GuestReview.create(host_id: 2, guest_id: 6, stars: 4, review: "a good guy")
GuestReview.create(host_id: 3, guest_id: 5, stars: 2, review: "a bad guy")
GuestReview.create(host_id: 4, guest_id: 4, stars: 4, review: "a good guy")
GuestReview.create(host_id: 5, guest_id: 3, stars: 4, review: "a good guy")
GuestReview.create(host_id: 6, guest_id: 2, stars: 5, review: "a great guy")
GuestReview.create(host_id: 7, guest_id: 1, stars: 4, review: "a good guy")
