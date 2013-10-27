class Location < ActiveRecord::Base
  belongs_to :meeting

  serialize :foursquare, Hash
end
