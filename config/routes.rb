Rails.application.routes.draw do
  mount EpiCas::Engine, at: "/"
  devise_for :users

  root to: 'courses#index'
  get '/courses/:id', to: 'courses#show'
end
