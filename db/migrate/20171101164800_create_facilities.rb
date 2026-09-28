class CreateFacilities < ActiveRecord::Migration[4.2]
  def change
    create_table :facilities do |t|
      t.string :name
    end
  end
end
