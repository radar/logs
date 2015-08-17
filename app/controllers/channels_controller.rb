#encoding: utf-8
class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def show
    @channel = Channel.where("NAME ILIKE ?", params[:name]).first
    @date = params[:date] ? Time.zone.parse(params[:date]).to_date : Time.zone.now.to_date
    @messages = @channel.messages.by_day(@date).includes(:person, :channel)
    fresh_when last_modified: @messages.last.created_at, etag: @messages.last
  end
end
