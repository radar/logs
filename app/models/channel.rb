class Channel < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name

  default_scope where(:hidden => false)

  has_many :messages

  def to_s
    name
  end
end
