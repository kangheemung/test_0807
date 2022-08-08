Rails.application.routes.draw do
 

  #top
  get '/'=>'posts#index'
  get 'posts/show'=>'posts#show' 
  post'posts/create'=>'posts#create'
  #singup
  get 'login' => 'sessions#new'
  post 'sessions/create'=>'sessions#create'
   delete 'logout'=>'sessions#destroy'
  #login
  get 'signup' => 'users#new'
  post "users/create" => "users#create"
  get "users/:id/likes"=>"users#likes"
  post 'likes/:post_id/create'=>'likes#create'
  post "likes/:post_id/destroy"=>"likes#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
