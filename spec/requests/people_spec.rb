require 'spec_helper'

describe 'people' do
  let!(:channel) { FactoryGirl.create(:channel) }
  let!(:person) { Person.create!(:nick => "Radar") }

  it "can click on a person's name from the messages page" do
    other = Person.create!(:nick => "Other")
    channel.messages.create(:person => person, :text => "Testing")
    channel.messages.create(:person => other, :text => "Other")

    visit channel_path(channel)
    within("#messages") do
      click_link "Radar"
    end

    within("#messages") do
      page.should have_content("Testing")
      page.should_not have_content("Other")
    end
  end

  it "shows a message when user has no messages" do
    visit person_path(person)
    within("#messages") do
      page.should have_content("There are no messages... yet.")
    end
  end

  it "should not show hidden messages" do
    channel = FactoryGirl.create(:channel, :hidden => true)
    channel.messages.create(:person => person, :text => "Crouching Tiger")

    visit person_path(person)
    all("#messages div").count.should == 0
  end
end
