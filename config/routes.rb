Rails.application.routes.draw do
  # get 'movies/index'
  # get 'movies/show'
  # get 'movies/new'
  # get 'movies/create'
  # get 'movies/edit'
  # get 'movies/update'
  # get 'movies/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  resources :movies

  devise_for :users
end
