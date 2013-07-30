class AddZipCodeToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :zip_code, :string
  end
end
