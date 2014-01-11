require_dependency "ads/application_controller"

module Ads
  module Admin
    
    class AdsController < BaseController
      before_action :set_ad, only: [:show, :edit, :update, :destroy]
      before_action :set_campaign
      before_action :set_banner_list, only: [:new, :edit, :update, :create]

      # GET /ads
      def index
        @ads = Ad.all
      end

      # GET /ads/1
      def show
      end

      # GET /ads/new
      def new
        @ad = Ad.new
      end

      # GET /ads/1/edit
      def edit
      end

      # POST /ads
      def create
        @ad = Ad.new(ad_params)

        if @ad.save
          redirect_to [:admin, @campaign, @ad], notice: 'Ad was successfully created.'
        else
          render action: 'new'
        end
      end

      # PATCH/PUT /ads/1
      def update
        if @ad.update(ad_params)
          redirect_to [:admin, @campaign, @ad], notice: 'Ad was successfully updated.'
        else
          render action: 'edit'
        end
      end

      # DELETE /ads/1
      def destroy
        @ad.destroy
        redirect_to admin_campaign_url(@campaign), notice: 'Ad was successfully destroyed.'
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_ad
          @ad = Ad.find(params[:id])
        end

        def set_campaign
          @campaign = Campaign.find params[:campaign_id]
        end
      
        def set_banner_list
          @banner_list = Banner.all.map { |b| [b.name, b.id] }
        end
      
        # Only allow a trusted parameter "white list" through.
        def ad_params
          params.require(:ad).permit :banner_id, :campaign_id, :display_count, :start_date, :end_date, :file, :remote_file, :link
        end

    end
  end
end