class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :user_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
