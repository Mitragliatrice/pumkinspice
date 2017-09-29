Rails.application.routes.draw do

  get 'profile/:id', to: 'users#show'

  get 'users/index'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }



  root to: 'trash#home'

  resources :skill_tables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
