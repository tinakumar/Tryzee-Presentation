class Model < ActiveRecord::Base
  attr_accessible :category_id, :description, :manufacturer_id, :model_number, :name, :photo_url

  belongs_to :manufacturer
  has_many :listings
  belongs_to :search
  belongs_to :category, :foreign_key => "category_id"




end
