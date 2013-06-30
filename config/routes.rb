Odysseyonrails::Application.routes.draw do
  resources :articles, :only => [:index, :show]
  get "about", :to => "miscellaneous#about"
  root :to => 'articles#index'
end
