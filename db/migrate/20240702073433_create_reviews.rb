class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hotel, null: false, foreign_key: true
      t.decimal :rating
      t.text :comment

      t.timestamps
    end
  end
end