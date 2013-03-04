Escolinha::Application.routes.draw do
   root :to => "page#home"

   resources :teachers
   resources :courses
   resources :disciplines  
   resources :rooms
   resources :students

   get '/testes' => "courses#list"
end
