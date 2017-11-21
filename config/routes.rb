Rails.application.routes.draw do
  devise_for :users
  resources :blog_posts, path: "blogposts"
  resources :blogposts, controller: "blog_posts"
  get 'bome/index'

  get 'home/index'
  get 'home/newaction' => 'blogp_osts#index'
  
  get ":title/p/:id" => "blog_posts#show", :id => /[0-9]+/

  post "blogposts/comment" => 'blog_posts#comment'
  root to: 'home#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
