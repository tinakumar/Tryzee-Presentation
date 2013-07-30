class User < ActiveRecord::Base
  attr_accessible :address, :address2, :city, :email, :first_name, :last_name, :latitude, :longitude, :password_digest, :photo_url, :state, :zip_code, :password, :password_confirmation

  has_many :tryals
  has_many :messages
  has_many :listings, dependent: :destroy
  belongs_to :register
  belongs_to :welcome_page

  has_secure_password

  geocoded_by :zip_code
  after_validation :geocode


end
