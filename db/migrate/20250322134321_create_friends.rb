# frozen_string_literal: true

class CreateFriends < ActiveRecord::Migration[7.1]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
