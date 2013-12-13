require 'spec_helper'

describe "campaigns/edit" do
  before(:each) do
    
    @organization = FactoryGirl.create(:organization)
    @campaign = FactoryGirl.create(:campaign)

  end

  it "renders the edit campaign form" do
    render

    # # Run the generator again with the --webrat flag if you want to use webrat matchers
    # assert_select "form[action=?][method=?]", campaign_path(@campaign), "post" do
    #   assert_select "input#campaign_name[name=?]", "campaign[name]"
    #   assert_select "input#campaign_description[name=?]", "campaign[description]"
    #end
  end
end
