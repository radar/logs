require 'spec_helper'

describe 'messages' do
  let(:channel) { FactoryGirl.create(:channel) }
  let(:person) { Person.create!(:nick => "Radar") } 

  before do
    channel.messages.create(:person => person, :text => "This is a test")
  end

  it 'viewing' do
    visit channel_path(channel)
    within("#messages") do
      page.should have_content("Radar: This is a test")
    end
  end
end
