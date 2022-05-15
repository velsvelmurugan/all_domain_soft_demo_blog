Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root "home#bloglists"
  get 'blogs' => 'home#bloglists'
  post 'home/createblog' => 'home#createblog'
  resources :home
  #custom devise route
  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  get 'signup', to: 'devise/registrations#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
