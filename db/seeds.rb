# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

# Clear existing data
Booking.delete_all
Room.delete_all
RoomType.delete_all
Amenity.delete_all
HotelContact.delete_all
Hotel.delete_all
User.delete_all

# Create Hotels
hotel1 = Hotel.create!(
  name: 'Hotel Paradise',
  description: 'A luxury hotel with a beautiful sea view.',
  location: '123 Beach Road, Miami, FL'
)

hotel2 = Hotel.create!(
  name: 'Mountain Retreat',
  description: 'A serene mountain retreat with breathtaking views.',
  location: '456 Mountain Trail, Aspen, CO'
)

# Create Contacts for Hotels
HotelContact.create!(hotel: hotel1, contact_type: 'Phone', contact_details: '+1234567890')
HotelContact.create!(hotel: hotel1, contact_type: 'Email', contact_details: 'contact@hotel1.com')

HotelContact.create!(hotel: hotel2, contact_type: 'Phone', contact_details: '+0987654321')
HotelContact.create!(hotel: hotel2, contact_type: 'Email', contact_details: 'contact@hotel2.com')

# Create Amenities for Hotels
Amenity.create!(hotel: hotel1, amenity_title: 'Wi-Fi', description: 'Free high-speed Wi-Fi')
Amenity.create!(hotel: hotel1, amenity_title: 'Pool', description: 'Outdoor swimming pool')

Amenity.create!(hotel: hotel2, amenity_title: 'Wi-Fi', description: 'Free high-speed Wi-Fi')
Amenity.create!(hotel: hotel2, amenity_title: 'Breakfast', description: 'Complimentary breakfast')

# Create Room Types
single_room = RoomType.create!(room_type: 'Single', description: 'Single bed room')
double_room = RoomType.create!(room_type: 'Double', description: 'Double bed room')
suite = RoomType.create!(room_type: 'Suite', description: 'Luxury suite with sea view')

# Create Rooms for Hotel 1
Room.create!(hotel: hotel1, room_type: single_room, price: 100.0, availability: true)
Room.create!(hotel: hotel1, room_type: double_room, price: 150.0, availability: true)
Room.create!(hotel: hotel1, room_type: suite, price: 300.0, availability: true)

# Create Rooms for Hotel 2
Room.create!(hotel: hotel2, room_type: single_room, price: 120.0, availability: true)
Room.create!(hotel: hotel2, room_type: double_room, price: 180.0, availability: true)
Room.create!(hotel: hotel2, room_type: suite, price: 350.0, availability: true)


# Customer User
User.create!(
  first_name: 'John',
  last_name: 'Doe',
  email: 'john.doe@example.com',
  mobile_number: '0987654321',
  password: 'password',
  password_confirmation: 'password',
  role: :customer
)
