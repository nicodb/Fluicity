class RemoveCityFromWishes < ActiveRecord::Migration
  def up
    remove_column :wishes, :city_id
  end
end
