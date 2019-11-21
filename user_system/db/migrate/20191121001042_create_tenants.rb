class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|
      t.string :title, default: ""
      t.string :subdomain, default: ""

      t.timestamps
    end
  end
end
