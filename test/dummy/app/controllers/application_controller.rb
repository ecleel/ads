class ApplicationController < ActionController::Base
  helper Ads::Engine.helpers
  
  def ads_user
    current_user
  end
  helper_method :ads_user
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
