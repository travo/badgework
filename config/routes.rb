Badgework::Application.routes.draw do

  namespace :admin do
    resources :awards
  end

  resources :awards

  root :to => 'awards#index'

end
