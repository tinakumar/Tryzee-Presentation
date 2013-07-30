class Manufacturer < ActiveRecord::Base
  attr_accessible :logo, :category_id, :model_id, :name, :rebate, :rebate_description

  has_many :models
  belongs_to :search
  belongs_to :category

  # def logo
    # manufacturer = Manufacturer.find_by_name(params[:name])
  # end

end
