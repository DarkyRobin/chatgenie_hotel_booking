class CreateHotelContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :hotel_contacts do |t|
      t.string :contact_type
      t.string :contact_details

      t.timestamps
    end
  end
end
