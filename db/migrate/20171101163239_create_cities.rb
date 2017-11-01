class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.decimal :center_latitude
      t.decimal :center_longitude
      t.string :currency
    end
  end
end
