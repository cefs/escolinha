Escolinha::Application.routes.draw do
  root :to => "page#home"

  resources :teachers
  resources :courses
  resources :students
  resources :disciplines  
end
