class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, default: ''
      t.string :firstname, default: ''
      t.string :lastname, default: ''
      t.string :email, default: ''
      t.string :mobile_number, default: ''
      t.boolean :verified, default: ''
      t.string :password_salt, default: ''
      t.string :encrypted_password, default: ''
      t.string :language, default: ''
      t.string :confirmation_token, default: ''

      t.timestamps
    end
  end
end
