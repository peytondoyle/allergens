class CreateRecIngs < ActiveRecord::Migration[6.0]
  def change
    create_table :rec_ings do |t|
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
