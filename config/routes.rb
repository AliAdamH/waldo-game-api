Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :images, only: %i[index show]
      get 'verify', to: 'images#verify_coordinates'
      post 'scores', to: 'scores#create'
    end
  end
end
