Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/requests" => "requests#index"
    post "/requests" => "requests#create"
    get "/requests/:id" => "requests#show"
    delete "/requests/:id" => "requests#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end

  namespace :api do
    get "/styles" => "styles#index"
    get "/styles/:id" => "styles#show"
  end

  namespace :api do
    get "/locations/:id" => "locations#show"
  end
end
