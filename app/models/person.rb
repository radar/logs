class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nick

  has_many :messages

  def to_s
    nick
  end

  def calendar
    Message.select("COUNT(*) as count, created_at::DATE as date").
    where(:person_id => self.id).
    group("created_at::DATE")
  end

  def public_messages
    messages.
      includes(:channel).
      where("channels.hidden = false").
      order("created_at DESC").
      references("channels")
  end
end
