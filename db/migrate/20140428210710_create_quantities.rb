class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.float :quantity

      t.timestamps
    end
  end
end
