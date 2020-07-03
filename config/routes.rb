Rails.application.routes.draw do
  root to: 'pages#Home'
  get '/learned', to: 'pages#learned'
  get '/learning', to: 'pages#learning'
  get '/grammar', to: 'pages#grammar'
  get '/quiz', to: 'pages#quiz'
  get '/test', to: 'pages#test'
  
  resources :vocabs
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
