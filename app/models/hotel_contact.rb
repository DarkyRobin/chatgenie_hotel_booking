class HotelContact < ApplicationRecord
  belongs_to :hotel

  validates :contact_type, :contact_details, presence: true
end
