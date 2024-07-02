class Hotel < ApplicationRecord
  belongs_to :contact, class_name: 'HotelContact'
  belongs_to :amenities, class_name: 'Amenity'
  has_many :rooms
  has_many :reviews
end
