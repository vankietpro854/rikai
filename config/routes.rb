Rails.application.routes.draw do
  resources :reports
  resources :chapters
  resources :cours
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get 'static_pages/help'
  resources :users
end
