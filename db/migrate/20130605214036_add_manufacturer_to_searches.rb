class AddManufacturerToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :manufacturer_id, :integer
  end
end
