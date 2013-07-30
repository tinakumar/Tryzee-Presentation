class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.integer :manufacturer_id
      t.string :model_number
      t.integer :category_id
      t.text :description
      t.string :photo_url

      t.timestamps
    end
  end
end
