Rails.application.routes.draw do
  get 'profile/:id', to: 'users#show'

  get 'users/index'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }



  root to: 'trash#home'
end
