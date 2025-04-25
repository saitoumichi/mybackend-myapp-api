Rails.application.routes.draw do
  get "/", to: ->(env) { [200, { "Content-Type" => "text/plain" }, ["Hello from Rails API"]] }

  namespace :api do
    namespace :v1 do
      resources :jobs, only: [:index, :create]
    end
  end
end
