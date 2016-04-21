Rails.application.routes.draw do
  resources :departments

  mount EpiCas::Engine, at: "/"
  devise_for :users

  root to: 'courses#index'

  resources :courses, only: [:show]
  resources :notes, expect: [:index]
end
