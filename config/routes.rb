Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :runners, only: [:index, :show, :update, :create]
      resources :runs, only: [:index, :show, :update, :create]
    end
  end

end
