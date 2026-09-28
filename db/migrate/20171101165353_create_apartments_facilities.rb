class CreateApartmentsFacilities < ActiveRecord::Migration[4.2]
  def change
    create_table :apartments_facilities do |t|
      t.references :apartment, foreign_key: true
      t.references :facility, foreign_key: true
    end
  end
end
