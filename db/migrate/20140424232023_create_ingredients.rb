class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :quantity
      t.decimal :price_per_pound

      t.timestamps
    end
  end
end
