Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]
  root 'posts#index'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
end
