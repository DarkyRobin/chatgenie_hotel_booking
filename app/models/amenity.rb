class Amenity < ApplicationRecord
  has_many :hotels, foreign_key: 'amenities_id'
end
