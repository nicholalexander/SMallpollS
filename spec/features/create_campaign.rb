# /organizations/:id/campaigns/new
## [ builder UI ]

# /campaings/:id/edit
## [ builder UI ]


require "spec_helper"


describe "an org's campaigns", js: true do
  let(:organization) { FactoryGirl.create(:organization) }

  it "can create one and return to the builder page in case my computer crashes" do

    binding.pry

    visit new_organization_campaign_path(organization)

    fill_in :name, with: "Toilet Poll"
    fill_in :description, with: "Survey of Kenyan toilet enjoyment."

    click_button "Create"

    created_campaign = Campaign.last

    visit edit_campaign_path(created_campaign)

    expect(page).to have_content "Toilet Poll"
  end

  # context "a campaign that has already been created" do
  #   let(:campaign) { FactoryGirl.create(:campaign) }

  #   it "can add questions to a campaign" do
  #     visit edit_campaign_path(campaign)

  #     click_button "Add Question"

  #     within "form.new-question" do
  #       fill_in :value, with: "Did you like the toilet?"
  #       select "Yes/No", from: :question_type
  #       click_button "Save"
  #     end

  #     within "ul.questions" do
  #       expect(page).to have_content "Did you like the toilet?"
  #     end
  #   end
  # end

  #   click_button "Add Respondent"

  #   within "form.new-respondent" do
  #     fill_in :name, with: "Joe Mekembe"
  #     fill_in :number, with: "5551112222"

  #     click_button "Save"
  #   end

  #   within "ul.respondents" do
  #     expect(page).to have_content "Joe Mekembe"
  #     expect(page).to have_content "5551112222"
  #   end
  # end
end