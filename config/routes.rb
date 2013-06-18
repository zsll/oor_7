Odysseyonrails::Application.routes.draw do
  resources :articles


  resources :posts
  get "about", :to => "miscellaneous#about"
  root :to => 'articles#index'
end
