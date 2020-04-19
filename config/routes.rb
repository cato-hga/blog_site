Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  devise_for :users, controllers: { registrations: "registrations"}
  root 'posts#index'
  resources :posts
end
