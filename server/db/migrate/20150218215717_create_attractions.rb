class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :city
      t.string :tag
      t.string :cost
      t.integer :rating
      t.text :comment
      t.string :address
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
