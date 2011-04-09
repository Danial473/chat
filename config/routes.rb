Chat::Application.routes.draw do
 
 resources :users do
   resources :messages
   
 end
resources :messages
 match '/userMessage/:id' =>"messages#userMessage"
 match '/privateMessages' =>"messages#privateMessages"


 resource :session
  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"  
end