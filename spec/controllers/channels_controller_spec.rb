require 'spec_helper'

describe ChannelsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "can find a channel regardless of case" do
      Channel.create!({:name => "rubyonrails"}, :without_protection => true)
      get 'show', :name => 'RuByOnRaIlS'
      response.should be_success
    end
  end

end
