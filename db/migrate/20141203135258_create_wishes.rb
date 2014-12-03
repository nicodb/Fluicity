class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.references :user, index: true
      t.references :city, index: true
      t.text :content

      t.timestamps
    end
  end
end
