class AddStepsToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :steps, :text
  end
end
