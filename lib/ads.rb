require "ads/engine"

module Ads
  mattr_accessor :user_class, :sign_in_path
  
  class << self
    
    def user_class
      if @@user_class.is_a?(String)
        begin
          Object.const_get(@@user_class)
        rescue NameError
          @@user_class.constantize
        end
      elsif @@user_class.nil?
        @@user_class = 'User'
      else
        raise "You should use String for user_class option."
      end
    end
    
  end
  
end
