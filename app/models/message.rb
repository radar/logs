class Message < ActiveRecord::Base
  self.inheritance_column = nil

  belongs_to :person
  belongs_to :channel

  attr_accessible :person, :text, :created_at
end
