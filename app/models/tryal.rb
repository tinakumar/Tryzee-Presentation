class Tryal < ActiveRecord::Base
  attr_accessible :due_at, :lender_id, :listing_id, :start_at, :status, :user_id

  belongs_to :user
  belongs_to :product
  belongs_to :lender, :class_name => 'User'

  def start_at
    @start = Time.now
  end

  def due_at
    @due = Time.now + (2 * 86400)
  end


end
