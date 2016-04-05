Rails.application.routes.draw do
  mount EpiCas::Engine, at: "/"
  devise_for :users
  root to: 'courses#index'
end
