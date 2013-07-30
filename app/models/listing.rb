class Listing < ActiveRecord::Base
  attr_accessible :category_id, :lender_description, :manufacturer_id, :model_id, :photo_url, :user_id, :model_name, :category_name, :manufacturer_name

  has_many :models
  belongs_to :category
  belongs_to :user
  belongs_to :tryal
  has_many :messages
  belongs_to :search
  belongs_to :manufacturer

  def self.search(search)
    if search
      find(:all, :conditions => ['model_name LIKE :search OR category_name LIKE :search OR manufacturer_name LIKE :search', {search: "%#{search}%"}])
    else
      find(:all)
    end
  end
end


