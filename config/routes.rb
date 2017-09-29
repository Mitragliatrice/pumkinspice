Rails.application.routes.draw do

  resources :skill_lists

  


  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get 'show/:id', to: 'users#show'
  get 'users/index'


  root to: 'trash#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
