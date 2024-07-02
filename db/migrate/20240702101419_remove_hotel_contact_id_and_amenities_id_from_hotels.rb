class RemoveHotelContactIdAndAmenitiesIdFromHotels < ActiveRecord::Migration[7.1]
  def change
    remove_column :hotels, :hotel_contact_id, :integer
    remove_column :hotels, :amenity_id, :integer
  end
end
