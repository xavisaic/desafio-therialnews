Rails.application.routes.draw do
  resources :noticia
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
  # Defines the root path route ("/")
  # root "articles#index"
  root 'noticia#index'
end
