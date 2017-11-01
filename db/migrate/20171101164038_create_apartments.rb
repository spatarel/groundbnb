class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.references :city, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude
      t.boolean :is_private
      t.integer :guests
      t.decimal :bedrooms
      t.integer :beds
      t.decimal :baths
    end
  end
end
