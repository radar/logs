require 'spec_helper'

describe Person do
  subject { Person.create!(:nick => "Radar") }
  context "#activity" do
    it "contains data for public messages" do
      Message.create!(:person => subject, :hidden => false)
      subject.activity.to_a.length.should == 1
    end

    it "does not contain data for private messages" do
      Message.create!(:person => subject, :hidden => true)
      subject.activity.to_a.length.should == 0
    end
  end
end
