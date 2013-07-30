class CreateTryals < ActiveRecord::Migration
  def change
    create_table :tryals do |t|
      t.string :status
      t.integer :user_id
      t.integer :lender_id
      t.integer :listing_id
      t.datetime :start_at
      t.datetime :due_at

      t.timestamps
    end
  end
end
