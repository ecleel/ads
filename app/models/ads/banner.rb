module Ads
  class Banner < ActiveRecord::Base
    has_many :ads
    # TODO validate presence of name 
    # TODO validate name shouldn't have spaces just letters and underscore.
  end
end
