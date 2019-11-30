class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.string :title, default: ""
      t.boolean :active, default: false
      t.integer :subscription_id
      t.integer :plan_id
      t.integer :user_id
  
      t.timestamps
    end
  end
end
