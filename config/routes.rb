Rails.application.routes.draw do
  root to: "projects#index"
  
  devise_for :students
  devise_for :lecturers
  resources :projects
end
