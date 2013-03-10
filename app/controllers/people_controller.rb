class PeopleController < ApplicationController
  def show
    @person = Person.find_by_nick!(params[:nick])
  end
end
