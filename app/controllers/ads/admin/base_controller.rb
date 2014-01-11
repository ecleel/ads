require_dependency "ads/application_controller"

module Ads
  module Admin
    class BaseController < ApplicationController
      # TODO use nested layout to use with what user have
      layout :set_layout
      before_filter :authenticate_ads_user
  
      private
      
      def set_layout
        'ads/application'
      end

      def authenticate_ads_user
        if !ads_user
          session["user_return_to"] = request.fullpath
          flash.alert = t("ads.errors.not_signed_in")
          devise_route = "new_#{Ads.user_class.to_s.underscore}_session_path"
          sign_in_path = Ads.sign_in_path ||
            (main_app.respond_to?(devise_route) && main_app.send(devise_route)) ||
            (main_app.respond_to?(:sign_in_path) && main_app.send(:sign_in_path))
          if sign_in_path
            redirect_to sign_in_path
          else
            raise "Ads could not determine the sign in path for your application. Please do one of these things:

    1) Define sign_in_path in the config/routes.rb of your application like this:

    or; 2) Set Ads.sign_in_path to a String value that represents the location of your sign in form, such as '/users/sign_in'."
          end
        end
      end
      
    end
  end
end