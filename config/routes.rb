Rails.application.routes.draw do
  root to: "emails#index"
  get 'home', to: "home#index"
  post 'home/index', to: "home#display"
  get 'display', to: "emails#display"
  delete 'delete', to: "emails#destroy"
  devise_for :users
  resources :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
