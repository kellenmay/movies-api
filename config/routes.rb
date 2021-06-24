Rails.application.routes.draw do
  resources :movie_reviews
  resources :users
  
  resources :movies do
    resources :movie_reviews 
  end
    
    
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
