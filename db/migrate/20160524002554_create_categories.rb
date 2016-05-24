class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.string :places_type, null: false
      t.string :icon

      t.timestamps null: false
    end
  end
end
