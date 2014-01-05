module Ads
  class Banner < ActiveRecord::Base
    has_many :ads
  
    # BANNER = all.each_with_object({}) {|banner, hsh| hsh[banner.name] = banner}
    # TODO validate presence of name 
    # TODO validate name shouldn't have spaces just letters and underscore.
  end
end
