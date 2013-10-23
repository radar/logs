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
  end

  private

  def find_person
    @person = Person.find_by_nick!(params[:nick])
  end

end
