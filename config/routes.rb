Rails.application.routes.draw do

  #devise_for :users
  resources :images
resources :uploads
resources :media_contents, only: [:create]

  resources :post_attachments
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/home' => 'home#index'

  get '/about' => 'home#about'

  get '/contact' => 'home#contact'

  #get '/detail' => 'home#detail'
get '/detail/:id' => 'home#detail' , as: 'detail'

get '/genre/:genre' => 'home#genre' , as: 'genre'


#get '/search/:word' => 'home#search' , as: 'search'

get '/search' => 'home#search'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
