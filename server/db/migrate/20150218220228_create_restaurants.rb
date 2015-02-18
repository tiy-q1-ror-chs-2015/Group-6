class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.string :tag
      t.string :cost
      t.text :comment
      t.integer :rating
      t.string :address
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
