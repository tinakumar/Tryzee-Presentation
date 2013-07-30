class Search < ActiveRecord::Base
  attr_accessible :category_id, :keywords, :listing_id, :model_id, :manufacturer_id, :zip_code, :manufacturer_name, :category_name, :model_name

  has_many :listings
  has_many :models
  has_many :manufacturers
  has_many :categories

  geocoded_by :zip_code
  after_validation :geocode

  def listings
    @listings ||= find_listings
  end

  private
  def find_listings

    listings = listings.where("description like?", "%#{keywords}%") if keywords.present?
    listings = listings.where("category_name like?", category_name) if category_name.present?
    listings = listings.where("manufacturer_name like?", "%#{manufacturer_name}%") if manufacturer_name.present?
    listings = listings.where("model_name like?", "%#{model_name}%") if model_name.present?
    listings = listings.where("zip_code like?", "%#{zip_code}%") if zip_code.present?
    listings
  end



end
