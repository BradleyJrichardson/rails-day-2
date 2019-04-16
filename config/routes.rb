Rails.application.routes.draw do
  get "/movies", to: "movies#index", as: "movies"
  post "/movies", to: "movies#create", as: "create_movie"
  get "/movies/new", to: "movies#new", as: "new_movie"
  get "/movies/:id", to: "movies#show", as: "movie"
  put "/movies/:id", to: "movies#update"
  patch "/movies/:id", to: "movies#update"
  get "/movies/:id/edit", to: "movies#edit", as: "edit_movie"
  delete "/movies/:id", to: "movies#destroy"

  root 'movies#index'
end
