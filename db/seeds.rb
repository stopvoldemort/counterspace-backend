# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

description = "We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."

User.create(name: "david", email: "david@guest.com", city: "New York, NY", bio: "do not be worried about what people think of you", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://randomuser.me/api/portraits/men/62.jpg")
User.create(name: "andrew", email: "andrew@guest.com", city: "New York, NY", bio: "when it’s over, leave.", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://randomuser.me/api/portraits/men/34.jpg")
User.create(name: "phil", email: "phil@guest.com", city: "New York, NY", bio: "go ahead. do your worst.", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://randomuser.me/api/portraits/men/83.jpg")
User.create(name: "claire", email: "claire@guest.com", city: "New York, NY", bio: "enjoy the silence", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://randomuser.me/api/portraits/women/80.jpg")
User.create(name: "alex", email: "alex@guest.com", city: "New York, NY", bio: "everytime you smile at me i fall in love over and over again ", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://randomuser.me/api/portraits/men/45.jpg")
User.create(name: "whitney", email: "whitney@guest.com", city: "New York, NY", bio: "it’s awful to want to go away", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://randomuser.me/api/portraits/women/84.jpg")
User.create(name: "elise", email: "elise@guest.com", city: "New York, NY", bio: "i cant and i dont to want see another thing", password_digest: "$2a$10$IDyIVpnUT7uOoW2JiazHmOF.cNMjxCal3AdusyDjn3gIC2p25R9Iu", pic_url: "https://randomuser.me/api/portraits/women/59.jpg")


Kitchen.create(title: "a great kitchen", street_address: "1 East 75th Street", city: "New York", state: "NY", zipcode: 11201, size: 450, max_guests: 6, base_price: 50, price_per_guest: 10, owner_id: 1,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: false, deep_fryer: true, pressure_cooker: true,
  blurb: "you'll like it", latitude: 40.7743744, longitude: -73.9652162, description: description)
Kitchen.create(title: "no kitchen better", street_address: "70 Clark Street", city: "New York", state: "NY", zipcode: 11201, size: 800, max_guests: 4, base_price: 100, price_per_guest: 20, owner_id: 2,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: false, standing_mixer: false, deep_fryer: true, pressure_cooker: true,
  blurb: "a good kitchen at a good price", latitude: 40.6975669, longitude: -73.9934464, description: description)
Kitchen.create(title: "a kitchen so good you'll cook yourself", street_address: "73 Pacific St.", city: "Forest Hills", state: "NY", zipcode: 11375, size: 450, max_guests: 8, base_price: 50, price_per_guest: 10, owner_id: 3,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: true, deep_fryer: true, pressure_cooker: false,
  blurb: "you will like cooking here", latitude: 40.709783, longitude: -73.678025, description: description)
Kitchen.create(title: "youve never seen such luxury", street_address: "709 Honey Creek Dr.", city: "New York", state: "NY", zipcode: 10028, size: 450, max_guests: 12, base_price: 30, price_per_guest: 6, owner_id: 4,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: false, deep_fryer: false, pressure_cooker: true,
  blurb: "don't think about any other kitchen", latitude: 40.762935, longitude: -73.962879, description: description)
Kitchen.create(title: "you will never be happy but you can rent this kitchen", street_address: "812 Thatcher Court", city: "Yonkers", state: "NY", zipcode: 10701, size: 450, max_guests: 14, base_price: 60, price_per_guest: 8, owner_id: 5,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: false, standing_mixer: true, deep_fryer: true, pressure_cooker: false,
  blurb: "insane things tend to happen in this kitchen ;)", latitude: 40.915278, longitude: -73.957756, description: description)
Kitchen.create(title: "life is nothing but a rental / rent my kitchen", street_address: "73 South Sherman Street", city: "Astoria", state: "NY", zipcode: 11106, size: 450, max_guests: 6, base_price: 20, price_per_guest: 5, owner_id: 6,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: false, deep_fryer: true, pressure_cooker: true,
  blurb: "not a sex dungeon", latitude: 40.626387, longitude: -73.703920, description: description)
Kitchen.create(title: "a kitchen to love", street_address: "15 St Margarets Lane", city: "New York", state: "NY", zipcode: 10003, size: 450, max_guests: 8, base_price: 75, price_per_guest: 15, owner_id: 7,
  knives: "wusthof", pots: "le creuset", pans: "copper", food_processor: true, standing_mixer: false, deep_fryer: true, pressure_cooker: true,
  blurb: "I don't care for cooking but I do care for strangers cooking...", latitude: 42.945430, longitude: -78.856549, description: description)

KitchenPicture.create(kitchen_id: 1, url: "http://res.cloudinary.com/dwtfwfzsx/image/upload/v1511897313/hrgeuelw54uzj60knkcw.jpg")
KitchenPicture.create(kitchen_id: 1, url: "http://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2013/9/12/0/HKITC111_After-Yellow-Kitchen-Cabinets-Close_4x3.jpg.rend.hgtvcom.616.462.suffix/1400954077147.jpeg")
KitchenPicture.create(kitchen_id: 1, url: "https://www.homedepot.com/hdus/en_US/DTCCOMNEW/fetch/Category_Pages/Kitchen/OFFR-hampton-bay.jpg")
KitchenPicture.create(kitchen_id: 1, url: "https://images2.roomstogo.com/is/image/roomstogo/dr_rm_redhook_cntr~Red-Hook-Pecan-5-Pc-Counter-Height-Dining-Room.jpeg?$pdp_gallery_945$")
KitchenPicture.create(kitchen_id: 1, url: "https://www.homedepot.com/hdus/en_US/DTCCOMNEW/fetch/Category_Pages/Kitchen/REFACE-Before.jpg")
KitchenPicture.create(kitchen_id: 2, url: "http://www.ikea.com/ms/media/cho_room/20153/kitchen/20153_cosk30a/20153_cosk30a_01_PH124155.jpg")
KitchenPicture.create(kitchen_id: 2, url: "https://i.pinimg.com/736x/ed/54/e4/ed54e4eb057feb7156b9c353d3bd1c1d.jpg")
KitchenPicture.create(kitchen_id: 2, url: "http://www4.pictures.lonny.com/mp/2C00p3sSrm9l.jpg")
KitchenPicture.create(kitchen_id: 2, url: "https://i.pinimg.com/736x/36/64/a4/3664a48aca950dd450b2e87fafb1e27d--cottage-kitchens-farmhouse-kitchens.jpg")
KitchenPicture.create(kitchen_id: 2, url: "https://hips.hearstapps.com/hbu.h-cdn.co/assets/cm/15/04/54bf3f5ab93b9_-_ge-stove-blackboard-breakfast-bar-kitchen-0712dempster04-xl.jpg")
KitchenPicture.create(kitchen_id: 2, url: "http://deptrai.co/wp-content/uploads/2017/07/cool-kitchen-designs-shock-8.jpg")
KitchenPicture.create(kitchen_id: 3, url: "http://www.normabudden.com/upload/2017/10/29/kitchens-kitchen-ideas-inspiration-ikea-kitchen-l-b3cb64c8a75be0fa.jpg")
KitchenPicture.create(kitchen_id: 3, url: "http://lnfuxing.com/wp-content/uploads/KITCHEN-RETRO-KITCHEN-BATHROOM-DESIGN-IDEAS-TABLE-COOL-DESIGN-VANGVIET-CONTEMPORARY-KITCHENS-INTERIOR-FURNITURE-WITH-WOOD-FLOOR-AND-WHITE-MARBLE-COUNTERTOP-ALSO-THREE-CHAIR-CHARMING-METAL-CABINETS.jpg")
KitchenPicture.create(kitchen_id: 3, url: "http://www2.pictures.lonny.com/lv/1G6g84mlqL9x.jpg")
KitchenPicture.create(kitchen_id: 3, url: "http://www.onaponaskitchen.com/wp-content/uploads/2017/03/cool-kitchen-ideas-new-small-home-decor-inspiration-with-cool-kitchen-ideas-about-13.jpg")
KitchenPicture.create(kitchen_id: 3, url: "http://www1.pictures.lonny.com/lv/Go_qPOz3Ky7x.jpg")
KitchenPicture.create(kitchen_id: 3, url: "http://blog.sembrodesigns.com/wp-content/uploads/2015/08/Cool-kitchen-features-for-your-home-remodeling-in-Columbus-Ohio.jpg")
KitchenPicture.create(kitchen_id: 4, url: "http://www.lg.com/us/images/CA/features/bsss-hero-driver-1600x800.jpg")
KitchenPicture.create(kitchen_id: 4, url: "http://www.smithhereblog.com/wp-content/uploads/2014/02/Cool-Kitchen-Lighting-Ideas-1.jpg")
KitchenPicture.create(kitchen_id: 5, url: "https://static.houselogic.com/content/images/classic-kitchen-remodeling-paint-walls-standard_b82ed6814cc033c1654a631c79177262.jpg")
KitchenPicture.create(kitchen_id: 5, url: "http://www3.pictures.lonny.com/lv/SzZqKw83Q7Jl.jpg")
KitchenPicture.create(kitchen_id: 6, url: "https://media3.s-nbcnews.com/j/newscms/2017_29/1229209/katie-lee-kitchen-170717_cbdb13db549611ff9b233e8d963b4ae5.today-inline-large.jpg")
KitchenPicture.create(kitchen_id: 6, url: "http://www.theeastendcafe.com/wp-content/uploads/2014/10/Cool-Kitchen-Storage.jpg")
KitchenPicture.create(kitchen_id: 7, url: "http://www.normabudden.com/upload/2017/10/30/kitchen-corseforg-kitchen-l-78c45b2f53394bda.jpg")
KitchenPicture.create(kitchen_id: 7, url: "https://i.shelterness.com/2017/11/02-a-chic-emerald-kitchen-island-with-a-marble-countertop-and-a-breakfast-zone-on-one-side.jpg")

# Reservation.create(guest_id: 1, kitchen_id: 7, guest_number: 4, date: "2017-12-23")
# Reservation.create(guest_id: 2, kitchen_id: 6, guest_number: 4, date: "2017-12-24")
# Reservation.create(guest_id: 3, kitchen_id: 5, guest_number: 4, date: "2017-12-25")
# Reservation.create(guest_id: 3, kitchen_id: 4, guest_number: 4, date: "2017-12-26")
# Reservation.create(guest_id: 5, kitchen_id: 3, guest_number: 4, date: "2017-12-27")
# Reservation.create(guest_id: 6, kitchen_id: 2, guest_number: 4, date: "2017-12-28")
# Reservation.create(guest_id: 6, kitchen_id: 1, guest_number: 4, date: "2017-12-28")
#
# Reservation.create(guest_id: 1, kitchen_id: 7, guest_number: 4, date: "2017-12-14")
# Reservation.create(guest_id: 5, kitchen_id: 6, guest_number: 4, date: "2017-11-26")
# Reservation.create(guest_id: 4, kitchen_id: 5, guest_number: 4, date: "2017-11-27")
# Reservation.create(guest_id: 3, kitchen_id: 4, guest_number: 4, date: "2017-11-28")
# Reservation.create(guest_id: 2, kitchen_id: 3, guest_number: 4, date: "2017-11-29")
# Reservation.create(guest_id: 1, kitchen_id: 2, guest_number: 4, date: "2017-11-20")
# Reservation.create(guest_id: 1, kitchen_id: 1, guest_number: 4, date: "2017-11-20")
#
# Reservation.create(guest_id: 2, kitchen_id: 7, guest_number: 4, date: "2017-10-27")
# Reservation.create(guest_id: 6, kitchen_id: 6, guest_number: 4, date: "2017-10-28")
# Reservation.create(guest_id: 5, kitchen_id: 5, guest_number: 4, date: "2017-10-29")
# Reservation.create(guest_id: 1, kitchen_id: 4, guest_number: 4, date: "2017-10-30")
# Reservation.create(guest_id: 2, kitchen_id: 3, guest_number: 4, date: "2017-10-15")
# Reservation.create(guest_id: 3, kitchen_id: 2, guest_number: 4, date: "2017-10-16")
# Reservation.create(guest_id: 5, kitchen_id: 2, guest_number: 4, date: "2017-10-16")
#
# Reservation.create(guest_id: 3, kitchen_id: 7, guest_number: 4, date: "2017-10-27")
# Reservation.create(guest_id: 5, kitchen_id: 6, guest_number: 4, date: "2017-10-28")
# Reservation.create(guest_id: 6, kitchen_id: 5, guest_number: 4, date: "2017-10-29")
# Reservation.create(guest_id: 6, kitchen_id: 4, guest_number: 4, date: "2017-10-30")
# Reservation.create(guest_id: 1, kitchen_id: 3, guest_number: 4, date: "2017-10-15")
# Reservation.create(guest_id: 3, kitchen_id: 2, guest_number: 4, date: "2017-10-16")
# Reservation.create(guest_id: 2, kitchen_id: 2, guest_number: 4, date: "2017-10-16")


KitchenReview.create(kitchen_id: 1, guest_id: 6, stars: 5, review: "I liked this kitchen")
KitchenReview.create(kitchen_id: 2, guest_id: 6, stars: 2, review: "bad kitchen")
KitchenReview.create(kitchen_id: 3, guest_id: 5, stars: 3, review: "I didn't like this kitchen")
KitchenReview.create(kitchen_id: 4, guest_id: 3, stars: 5, review: "Great kitchen")
KitchenReview.create(kitchen_id: 5, guest_id: 3, stars: 4, review: "Super kitchen")
KitchenReview.create(kitchen_id: 6, guest_id: 2, stars: 5, review: "This kitchen has a great floor")
KitchenReview.create(kitchen_id: 7, guest_id: 1, stars: 5, review: "run, don't walk, to rent this kitchen")

KitchenReview.create(kitchen_id: 7, guest_id: 5, stars: 5, review: "I liked this kitchen")
KitchenReview.create(kitchen_id: 6, guest_id: 6, stars: 2, review: "bad kitchen")
KitchenReview.create(kitchen_id: 5, guest_id: 5, stars: 1, review: "I didn't like this kitchen")
KitchenReview.create(kitchen_id: 4, guest_id: 2, stars: 4, review: "Great kitchen")
KitchenReview.create(kitchen_id: 3, guest_id: 3, stars: 5, review: "Super kitchen")
KitchenReview.create(kitchen_id: 2, guest_id: 2, stars: 2, review: "This kitchen has a great floor")
KitchenReview.create(kitchen_id: 1, guest_id: 1, stars: 5, review: "run, don't walk, to rent this kitchen")


def create_unread_owner_messages(guest, owner, reservation)
  Message.create(content: "Hi, let me know if you need anything", recipient_id: guest, sender_id: owner, reservation_id: reservation, read: true)
  Message.create(content: "Will do, thanks", recipient_id: owner, sender_id: guest, reservation_id: reservation, read: false)
  Message.create(content: "Do you have any carrots?", recipient_id: owner, sender_id: guest, reservation_id: reservation, read: false)
end

def create_unread_guest_messages(guest, owner, reservation)
  Message.create(content: "Hi, let me know if you need anything", recipient_id: guest, sender_id: owner, reservation_id: reservation, read: false)
  Message.create(content: "FYI, the door will be unlocked", recipient_id: guest, sender_id: owner, reservation_id: reservation, read: false)
end

def create_default_messages(guest, owner, reservation)
  Message.create(content: "Hi, let me know if you need anything", recipient_id: guest, sender_id: owner, reservation_id: reservation, read: true)
  Message.create(content: "FYI, the door will be unlocked", recipient_id: guest, sender_id: owner, reservation_id: reservation, read: true)
  Message.create(content: "Thanks for everything, we had a great time", recipient_id: owner, sender_id: guest, reservation_id: reservation, read: true)
  Message.create(content: "Glad you enjoyed it", recipient_id: guest, sender_id: owner, reservation_id: reservation, read: true)
end


def create_reservation(guest, kitchen_id, date, unread_messages_recipient)
  guest_id = User.find_by(name: guest).id
  owner_id = Kitchen.find(kitchen_id).owner_id
  if guest_id == owner_id
    "guest is the owner"
  else
    Reservation.create(guest_id: guest_id, kitchen_id: kitchen_id, guest_number: 4, date: date)
    reservation_id = Reservation.last.id
    if unread_messages_recipient == "owner"
      create_unread_owner_messages(guest_id, owner_id, reservation_id)
    elsif unread_messages_recipient == "guest"
      create_unread_guest_messages(guest_id, owner_id, reservation_id)
    else
      create_default_messages(guest_id, owner_id, reservation_id)
    end
  end
end


def seed_reservations_and_messages(n)
  users = ["david", "andrew", "phil", "elise", "claire", "whitney", "alex"]
  unread_messages_recipients = ["guest", "owner", "default"]
  already_created = []
  i = 0
  while i < n
    guest = users.sample
    day = 1 + rand(29)
    month = 10 + rand(3)

    if month > 11 && day > 7
      unread_messages_recipient = unread_messages_recipients.sample
    else
      unread_messages_recipient = "default"
    end

    if day < 10
      day = "0#{day}"
    end

    date = "2017-#{month}-#{day}"

    kitchen_id = 1 + rand(7)

    already_created << [guest, kitchen_id, date, unread_messages_recipient]
    if already_created.length == already_created.uniq.length
      create_reservation(guest, kitchen_id, date, unread_messages_recipient)
    else
      already_created = already_created.uniq
    end
    i+=1
  end
end

seed_reservations_and_messages(70)


# create_unread_guest_messages(6, 7, 7)
# create_unread_guest_messages(2, 4, 2)
# create_unread_guest_messages(1, 4, 1)
# create_unread_guest_messages(3, 4, 3)
# create_unread_guest_messages(5, 7, 5)
# create_unread_guest_messages(6, 7, 6)
#
# create_unread_owner_messages(1, 4, 8)
# create_unread_owner_messages(3, 7, 4)
