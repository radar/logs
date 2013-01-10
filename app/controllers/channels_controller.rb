#encoding: utf-8
class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def show
    @channel = Channel.find_by_name(params[:name])
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @messages = @channel.messages.by_day(@date).includes(:person, :channel)
  end
end
