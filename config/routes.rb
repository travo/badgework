Badgework::Application.routes.draw do

  devise_for :members

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resource :members
    end
  end

  namespace :admin do
    resources :activities
    resources :targets
  end

  root :to => 'home#index'

end
