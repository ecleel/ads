module Ads
  class Campaign < ActiveRecord::Base
    has_many :ads
  end
end
