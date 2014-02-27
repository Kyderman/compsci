Compsci::Application.routes.draw do
  resources :votes

  resources :posts
  
  root :to => "home#index"
end
