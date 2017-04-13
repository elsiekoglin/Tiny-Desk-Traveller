class Location < ActiveRecord::Base
  validates :city, :area_of_interest, :lat, :lng, presence: true
end
