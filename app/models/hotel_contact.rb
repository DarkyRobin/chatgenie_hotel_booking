class HotelContact < ApplicationRecord
  has_many :hotels, foreign_key: 'contact_id'
end
