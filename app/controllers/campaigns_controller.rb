class CampaignsController < ApplicationController

  def new
    @campaign = Campaign.new
  end

  def create
    binding.pry
    @campaign = Campaign.new(campaign_params)

    if @campaign.save
      redirect_to
    else
      error = true
    end

  end

 private
    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_params
      params.require(:campaign).permit(:campaign)
    end
  end
end

