class CreatePizzaPlaces < ActiveRecord::Migration
  def change
    create_table :pizza_places do |t|
      t.string :name, null: false, index: true
      t.text :address
      t.string :city, index: true
      t.string :state
      t.string :zip_code, index: true
      t.timestamps
    end
  end
end
