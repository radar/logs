class PeopleController < ApplicationController
  respond_to :html, :json
  
  def show
    find_person
    @messages = @person.public_messages.page(params[:page]).per(250)
  end

  def activity
    find_person
    @activity = @person.activity
    respond_with(@activity)
    expires_in 1.day
  end

  private

  def find_person
    @person = Person.where("nick ILIKE ? ESCAPE ''", params[:nick]).first
  end

end
