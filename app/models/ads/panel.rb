module Ads
  class Panel < ActiveRecord::Base
    validates_presence_of :name, :width, :height
  end
end
