class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :remember_token
    end

    add_index :users, :remember_token
    add_index :users, :username
  end
end
