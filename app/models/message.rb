class Message < ActiveRecord::Base
  attr_accessible :listing_id, :message, :user_id

  belongs_to :user
  belongs_to :listing

  def sender

  end

  def recipient

  end
end
