Rails.application.routes.draw do

  resources :articles, except: [:delete]

  delete "articles/:id",      to: "articles#destroy", as: :article_destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
