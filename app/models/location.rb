class Location < ActiveRecord::Base
  DEFAULT = { address: 'Huntington Beach, CA', latitude: 33.6594835, longitude: -117.9988026 }

  geocoded_by :address
  after_validation :geocode

  validates :address, presence: true
end
