require_dependency "ads/application_controller"

module Ads
  module Admin
    
    class CampaignsController < BaseController
      before_action :set_campaign, only: [:show, :edit, :update, :destroy]

      # GET /campaigns
      def index
        @campaigns = Campaign.all
      end

      # GET /campaigns/1
      def show
        @ads = @campaign.ads
      end

      # GET /campaigns/new
      def new
        @campaign = Campaign.new
      end

      # GET /campaigns/1/edit
      def edit
      end

      # POST /campaigns
      def create
        @campaign = Campaign.new(campaign_params)

        if @campaign.save
          redirect_to [:admin, @campaign], notice: 'Campaign was successfully created.'
        else
          render action: 'new'
        end
      end

      # PATCH/PUT /campaigns/1
      def update
        if @campaign.update(campaign_params)
          redirect_to [:admin, @campaign], notice: 'Campaign was successfully updated.'
        else
          render action: 'edit'
        end
      end

      # DELETE /campaigns/1
      def destroy
        @campaign.destroy
        redirect_to admin_campaigns_url, notice: 'Campaign was successfully destroyed.'
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_campaign
          @campaign = Campaign.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def campaign_params
          params.require(:campaign).permit(:name, :advertiser)
        end
    end
  end
end
