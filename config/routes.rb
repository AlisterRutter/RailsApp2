Rails.application.routes.draw do
  get 'blogposts/new'

  get 'blogposts/create'

  resources :users
  root 'static_pages#home'
  get '/contact-us', to: 'static_pages#contact'
  get '/about-us', to: 'static_pages#about'
  get '/hello', to: 'static_pages#helloworld'

  get    '/login',   to: 'sessions#new'
  get    '/signup',   to: 'users#signup'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
