class CreateRoomTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :room_types do |t|
      t.string :room_type
      t.text :description

      t.timestamps
    end
  end
end
