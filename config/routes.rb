Odysseyonrails::Application.routes.draw do
  resources :articles, :only => [:index, :show]
  get "about", :to => "miscellaneous#about"
  get "google4b8203cef8d8be98.html", :to => "miscellaneous#google_webmaster_verify"
  root :to => 'articles#index'
end
