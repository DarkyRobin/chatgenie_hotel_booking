class AddHotelIdToHotelContacts < ActiveRecord::Migration[7.1]
  def change
    add_column :hotel_contacts, :hotel_id, :integer
  end
end
