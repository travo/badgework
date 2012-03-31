Badgework::Application.routes.draw do

  resources :awards

  root :to => 'awards#index'

end
