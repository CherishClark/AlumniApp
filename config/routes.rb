Rails.application.routes.draw do

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :posts do
   member do
    put "like", to: "posts#upvote"
    put "dislike", to: "posts#downvote"
     end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'posts#home'


  mount ActionCable.server => '/cable'
end