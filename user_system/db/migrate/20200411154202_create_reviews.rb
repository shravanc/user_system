class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :text
      t.integer :item_id

      t.timestamps
    end
  end
end
