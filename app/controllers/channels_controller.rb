#encoding: utf-8
class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def show
    @channel = Channel.where("NAME ILIKE ?", params[:name]).first
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @messages = @channel.messages.by_day(@date).includes(:person, :channel)
  end
end
