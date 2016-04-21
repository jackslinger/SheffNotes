Rails.application.routes.draw do
  resources :departments
  devise_for :users

  root to: 'departments#index'

  resources :courses, only: [:show, :create, :new]
  resources :notes, expect: [:index]

  get 'departments/:id/add-course' => 'course#create', :as => 'add_course'
end
