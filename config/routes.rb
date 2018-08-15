Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#   root to: 'restaurants#index'

#   get 'restaurants', to: 'restaurants#index'

#   get 'restaurants/new', to: 'restaurants#new'
#   post 'restaurants', to: 'restaurants#create'

#   get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

#   get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new
#   post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'

  resources :restaurants, only: [ :index, :new, :create, :show] do
    resources :reviews, only: [ :new, :create ]
  end

end
