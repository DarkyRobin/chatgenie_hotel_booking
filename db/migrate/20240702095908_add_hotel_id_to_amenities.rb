class AddHotelIdToAmenities < ActiveRecord::Migration[7.1]
  def change
    add_column :amenities, :hotel_id, :integer
  end
end
