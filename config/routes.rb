Rails.application.routes.draw do
  get 'profile/:id', to: 'users#show'

  get 'users/index'

  devise_for :users

  root to: 'trash#home'
end
