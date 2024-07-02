class Hotel < ApplicationRecord
  has_many :contacts, class_name: 'HotelContact', dependent: :destroy
  has_many :amenities, class_name: 'Amenity', dependent: :destroy
  has_many :rooms
  has_many :reviews

  validates :name, :description, :location, presence: true
end
