require "spec_helper"

describe CampaignsController do
  describe "routing" do

    before(:each) do
      @organization = FactoryGirl.create(:organization)
    end


    it "routes to #index" do
      get("organizations/#{@organization.id}/campaigns").should route_to("campaigns#index")
    end

    it "routes to #new" do
      get("organizations/#{@organization.id}/campaigns/new").should route_to("campaigns#new")
    end

    it "routes to #show" do
      get("organizations/#{@organization.id}/campaigns/1").should route_to("campaigns#show", :id => "1")
    end

    it "routes to #edit" do
      get("organizations/#{@organization.id}/campaigns/1/edit").should route_to("campaigns#edit", :id => "1")
    end

    it "routes to #create" do
      post("organizations/#{@organization.id}/campaigns").should route_to("campaigns#create")
    end

    it "routes to #update" do
      put("organizations/#{@organization.id}/campaigns/1").should route_to("campaigns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("organizations/#{@organization.id}/campaigns/1").should route_to("campaigns#destroy", :id => "1")
    end

  end
end
