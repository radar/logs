require 'spec_helper'

describe 'people' do
  let!(:channel) { FactoryGirl.create(:channel) }
  before do
    person = Person.create!(:nick => "Radar")
    other = Person.create!(:nick => "Other")
    channel.messages.create(:person => person, :text => "Testing")
    channel.messages.create(:person => other, :text => "Other")
  end

  it "can click on a person's name from the messages page" do
    visit channel_path(channel)
    within("#messages") do
      click_link "Radar"
    end

    within("#messages") do
      page.should have_content("Testing")
      page.should_not have_content("Other")
    end
  end
end
