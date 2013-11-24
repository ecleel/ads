module Ads
  class Ad < ActiveRecord::Base
    belongs_to :campaign
    belongs_to :banner
    
    mount_uploader :file, AdsUploader
    attr_accessor :remote_file
    
    validates_presence_of :campaign_id, :banner_id#, :file
  end
end
