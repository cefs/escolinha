Escolinha::Application.routes.draw do
  root :to => "page#home"

  resources :teachers
end
