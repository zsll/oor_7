Odysseyonrails::Application.routes.draw do
  resources :articles, :only => [:index, :show]
  get "about", :to => "miscellaneous#about"
  get "sitemap.xml", :to => "miscellaneous#sitemap", defaults: { format: "xml" }
  root :to => 'articles#index'
end
