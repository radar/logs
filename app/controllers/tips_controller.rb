class TipsController < ApplicationController
  def index
    @tips = Tip.order("command ASC")
  end
end
