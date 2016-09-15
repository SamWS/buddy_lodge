class Listing < ApplicationRecord
  belongs_to :user
  has_many :pets
  has_many :house_images

  before_save :geocoder
  
  def geocoder
    lat, long = Geocoder::coordinates(self.address)
    self.latitude = lat
    self.longitude = long
  end

end
