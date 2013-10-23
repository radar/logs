Logs::Application.routes.draw do
  root :to => "channels#index"

  get '/tips', :to => "tips#index"
  get '/p/:nick', :to => "people#show", :as => :person
  get '/p/:nick/activity', :to => "people#activity", :as => :person_activity
  get ':name', :to => "channels#show", :as => :channel
end
