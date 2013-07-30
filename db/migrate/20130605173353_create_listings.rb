class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :model_id
      t.string :photo_url
      t.integer :category_id
      t.integer :manufacturer_id
      t.text :lender_description
      t.integer :user_id

      t.timestamps
    end
  end
end
