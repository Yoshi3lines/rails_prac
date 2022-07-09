Rails.application.routes.draw do
  
  root :to => 'info#index'
  get "/auth/:provider/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"
end
