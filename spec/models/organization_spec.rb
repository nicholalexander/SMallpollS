describe Organization do

  it { should have_many(:campaigns) }

  it "can be created" do
    org = Organization.new

    expect(org).to not_be(nil)
  end

end