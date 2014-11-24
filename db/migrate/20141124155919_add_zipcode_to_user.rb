class AddZipcodeToUser < ActiveRecord::Migration
  def up
    add_column :users, :zipcode, :integer
    remove_column :users, :city_id
  end
end