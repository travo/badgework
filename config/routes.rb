Badgework::Application.routes.draw do

  namespace :admin do
    resources :activities
    resources :awards
  end

  resources :awards

  root :to => 'awards#index'

end
