module Ads
  class Ad < ActiveRecord::Base

    has_many :stats
    belongs_to :campaign
    belongs_to :banner
    
    # TODO scope for showing ads that reach the threshhold.
    scope :active, -> { where 'start_date < :now AND end_date > :now', {now: DateTime.now} }
    
    mount_uploader :file, AdsUploader
    attr_accessor :remote_file
    
    validates :campaign_id, presence: true
    validates :banner_id,   presence: true
    
  end
end
