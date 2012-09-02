require 'spec_helper'

describe 'messages' do
  let!(:channel) { FactoryGirl.create(:channel) }
  let!(:person) { Person.create!(:nick => "Radar") } 
  let!(:message) { channel.messages.create(:person => person, :text => "This is a test") }
  let!(:past_message) { channel.messages.create(:person => person, :text => "From the past!", :created_at => 1.day.ago) }

  it 'viewing' do
    visit channel_path(channel)
    within("#messages") do
      page.should have_content("Radar: This is a test")
    end
  end

  it "viewing past messages" do
    visit person_path(person)
    click_link past_message.id.to_s
    within("#messages") do
      page.should have_content("Radar: From the past!")
    end
  end


  it "paginating" do
    visit channel_path(channel)
    click_link "back_one"
    within("#messages") do
      page.should have_content("Radar: From the past!")
    end

    click_link "forward_one" do
      within("#messages") do
        page.should have_content("Radar: This is a test")
      end
    end

  end

end
