class AddCategoryNameToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :manufacturer_name, :string
    add_column :searches, :category_name, :string
    add_column :searches, :model_name, :string
  end
end
