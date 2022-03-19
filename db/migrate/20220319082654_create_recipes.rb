class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :cook_time
      t.string :prep_time
      t.string :ingredients
      t.string :ratings
      t.string :cuisine
      t.string :category
      t.string :author
      t.string :image
      t.timestamps
    end
  end
end
