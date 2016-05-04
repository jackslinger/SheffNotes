Rails.application.routes.draw do
  resources :departments

  root to: 'departments#index'

  resources :courses, only: [:show, :create, :update]
  resources :notes, expect: [:index]

  get 'departments/:department_id/add-course' => 'courses#add', :as => 'add_course'
  get 'my-notes' => 'notes#my_notes', :as => 'my_notes'

end
