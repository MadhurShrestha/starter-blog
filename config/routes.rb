Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  #For example when handling a request like GET http://localhost:3000/articles/1,
  #1 would be captured as the value for :id which would then be accessible as params[:id] in the show action of ArticlesController.

  #the route above indicates that the get/articles requests are mapped to the index action of ArticlesController
  #To create articlescontroller and its index action,we'll run the controller generator with the --skip-routes option
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
