require 'spec_helper'

describe 'Channels' do
  before do
    FactoryGirl.create(:channel, :name => "#rubyonrails")
  end

  it "sees a list of channels" do
    visit root_path
    within("#channels") do
      page.should have_content("#rubyonrails")
    end
  end

  it "cannot see a hidden channel"
end
