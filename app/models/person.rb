class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nick

  attr_accessible :nick

  has_many :messages

  def to_s
    nick
  end

  def last_100_messages_by_day
    messages.order("created_at DESC").group_by { |m| m.created_at.to_date.strftime("%d %B %Y") }
  end
end
