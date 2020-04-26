Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/requests" => "requests#index"
    post "/requests" => "requests#create"
    get "/requests/:id" => "requests#show"
    delete "/requests/:id" => "requests#destroy"
  end

  namespace :api do
    get "/styles" => "styles#index"
    get "/styles/:id" => "styles#show"
    # get "/styles/:id" => "styles#update"
  end
end
