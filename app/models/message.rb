class Message < ActiveRecord::Base
  belongs_to :person
  belongs_to :channel

  attr_accessible :person, :text
end
