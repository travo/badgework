Badgework::Application.routes.draw do

  namespace :admin do
    resources :activities
    resources :targets
  end

  resources :targets

  root :to => 'home#index'

end
