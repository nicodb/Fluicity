class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :role
      t.integer :city_id
      t.string :referrer_url
      t.string :referral_url

      t.timestamps
    end
  end
end
