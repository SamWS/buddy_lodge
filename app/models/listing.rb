class Listing < ApplicationRecord
  belongs_to :user
  has_many :pets, dependent: :destroy
  has_many :house_images, dependent: :destroy
  

  before_save :geocoder
  
  def geocoder
    lat, long = Geocoder::coordinates(self.address)
    self.latitude = lat
    self.longitude = long
  end

end
