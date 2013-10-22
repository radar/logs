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

  it "tells people about no messages yet" do
    visit channel_path(Channel.first)
    within("#messages") do
      page.should have_content("There are no messages... yet.")
    end
  end

  it "cannot see a hidden channel" do
    FactoryGirl.create(:channel, :name => "sekret", :hidden => true)
    visit root_path
    within("#channels") do
      page.should_not have_content("sekret")
    end
    channels = all("#channels li")
    channels.count.should == 1
    channels.map(&:text).should == ["#rubyonrails"]
  end
end
