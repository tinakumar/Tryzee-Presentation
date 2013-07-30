class Category < ActiveRecord::Base
  attr_accessible :name

  belongs_to :listing
  has_many :models
  has_many :manufacturers

end
