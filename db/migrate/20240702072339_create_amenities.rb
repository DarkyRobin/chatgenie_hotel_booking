class CreateAmenities < ActiveRecord::Migration[7.1]
  def change
    create_table :amenities do |t|
      t.string :amenity_title
      t.text :description

      t.timestamps
    end
  end
end
