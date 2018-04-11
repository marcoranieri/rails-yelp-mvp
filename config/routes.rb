Rails.application.routes.draw do
  # get 'reviews/new'

  # get 'reviews/create'

  # get 'restaurants/index'

  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'restaurants',     to: 'restaurants#index',   as: :restaurants
  # post 'restaurants',    to: 'restaurants#create'

  # get 'restaurants/new', to: 'restaurants#new',     as: :new_restaurant

  # get 'restaurants/:id', to: 'restaurants#show',    as: :restaurant

  # get "restaurants/:restaurant_id/reviews/new",     to: "reviews#new", as: :restaurant_new_review
  # post "restaurants/:restaurant_id/reviews",        to: "reviews#create", as: :restaurant_reviews

  resources :restaurants do
    resources :reviews
  end
end
