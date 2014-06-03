Badgework::Application.routes.draw do

  devise_for :members

  namespace :admin do
    resources :activities
    resources :targets
  end

  resources :targets

  root :to => 'home#index'

end
