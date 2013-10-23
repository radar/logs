class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nick

  has_many :messages

  def to_s
    nick
  end

  def activity
    Message.select("COUNT(*) as count, created_at::DATE as date").
    where(:person_id => self.id, :hidden => false).
    group("created_at::DATE").
    order("date DESC")
  end

  def public_messages
    messages.
      includes(:channel).
      where("channels.hidden = false").
      order("created_at DESC").
      references("channels")
  end
end
