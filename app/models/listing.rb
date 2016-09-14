class Listing < ApplicationRecord
  belongs_to :user
  has_many :pets
  has_many :house_images
end
