Logs::Application.routes.draw do
  root :to => "channels#index"

  get ':name', :to => "channels#show", :as => :channel
end
