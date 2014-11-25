class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :role
      t.integer :city_id
      t.integer :referrer_id

      t.timestamps
    end

    add_index :users, :city_id
    add_index :users, :referrer_id
  end
end
