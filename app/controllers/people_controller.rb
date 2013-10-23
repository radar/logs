class PeopleController < ApplicationController
  respond_to :html, :json
  
  def show
    find_person
    @messages = @person.public_messages.page(params[:page]).per(250)
  end

  def calendar
    find_person
    @calendar = @person.calendar
    respond_with(@calendar)
    expires_in 1.day
  end

  private

  def find_person
    @person = Person.where("nick ILIKE ?", params[:nick]).first
  end

end
