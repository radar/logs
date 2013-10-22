class PeopleController < ApplicationController
  def show
    find_person
    @messages = @person.public_messages.page(params[:page]).per(250)
  end

  def calendar
    find_person
    @calendar = @person.calendar
  end

  private

  def find_person
    @person = Person.find_by_nick!(params[:nick])
  end

end
