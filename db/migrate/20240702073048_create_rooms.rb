class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.references :hotel, null: false, foreign_key: true
      t.references :room_type, null: false, foreign_key: true
      t.decimal :price
      t.boolean :availability

      t.timestamps
    end
  end
end
