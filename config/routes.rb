Rails.application.routes.draw do
  #get 'static_pages/home'
  #get 'static_pages/about'
  #get  'static_pages/contact'
  #get 'users/new'
  #get 'static_pages/home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/', to: 'static_pages#home'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :users
end