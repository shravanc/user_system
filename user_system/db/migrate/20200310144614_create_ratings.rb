class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :rating, default: 0

      t.timestamps
    end
  end
end
