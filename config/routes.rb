Rails.application.routes.draw do
  root 'articles#index'

  get '/admin/home' => 'welcome#index'

  resources :articles

  #admin login
  get '/admin/login' => 'sessions#new'
  post '/admin/login' => 'sessions#create'
  #admin logout
  delete '/admin/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
