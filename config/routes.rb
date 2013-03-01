Escolinha::Application.routes.draw do
   root :to => "page#home"

   resources :teachers
   resources :courses
   resources :disciplines  
   resources :rooms

   resources :students do
      member do
         put "reset" => "students#reset"
      end
   end

end
