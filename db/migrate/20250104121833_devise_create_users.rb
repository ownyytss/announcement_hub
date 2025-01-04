# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :profile_picture
      t.string :role
      t.timestamps
    end
  end
end
