require_dependency "ads/application_controller"

module Ads
  class AdsController < ApplicationController
    def index
      ads_types = params[:bt].split(',') if params[:bt]
      ads_count = params[:bc]
      
      if ads_types
        puts "ads_types: #{ads_types}"
        banner_ids = Banner.where(name: ads_types).pluck(:id)
        @ads = Ad.active.includes(:banner).where(banner_id: banner_ids)
        render json: @ads.each_with_object( Hash.new {|h,k| h[k] = [] } ) {|ad, hsh| hsh[ad.banner.name] << {id: ad.id, link: ad.link, image_path: ad.file.url, banner_name: ad.banner.name} }
      else
        render json: {error: "There is no Ads Types gived."}
      end
    end
  end
end
