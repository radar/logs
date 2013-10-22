class PeopleController < ApplicationController
  def show
    @person = Person.find_by_nick!(params[:nick])
    @messages = @person.public_messages.page(params[:page]).per(250)
  end
end
