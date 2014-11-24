class AddZipcodeToCities < ActiveRecord::Migration
  def up
    add_column :cities, :zipcode, :integer
  end
end