class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :pizza_place, null: false, index: true
      t.timestamps
    end
  end
end
