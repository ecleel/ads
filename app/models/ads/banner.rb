module Ads
  class Banner < ActiveRecord::Base
    has_many :ads

    # BANNER = all.each_with_object({}) {|banner, hsh| hsh[banner.name] = banner}
    # TODO validate name shouldn't have spaces just letters and underscore.
    validates :name,   presence: true, uniqueness: true
    validates :width,  presence: true
    validates :height, presence: true

  end
end
