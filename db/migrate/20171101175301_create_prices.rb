class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.boolean :was_rented
      t.decimal :price
      t.date :day
      t.references :apartment, foreign_key: true
    end
  end
end
