class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :user_id
      t.text :wish
      t.integer :city_id
      t.integer :vote
      t.string :wish_url

      t.timestamps
    end
  end
end
