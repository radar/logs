class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:nick])
  end
end
