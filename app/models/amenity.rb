class Amenity < ApplicationRecord
  belongs_to :hotel
  
  validates :amenity_title, :description, presence: true
end
