#encoding: utf-8
class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def show
    @channel = Channel.find(params[:name])
    @messages = @channel.messages.today.includes(:person, :channel)
  end
end
