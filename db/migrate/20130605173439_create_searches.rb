class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :category_id
      t.integer :model_id
      t.integer :listing_id
      t.string :keywords

      t.timestamps
    end
  end
end
