class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.integer :model_id
      t.integer :category_id
      t.boolean :rebate
      t.string :rebate_description

      t.timestamps
    end
  end
end
