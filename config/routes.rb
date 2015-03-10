Rails.application.routes.draw do
  devise_for :users
  root 'application#home'
  #get '/index' => 'dash#show'
  get "/dashboard" => "dashboard#show"

  get "/stations/buses" => "buses#show"
  get "/stations/trains" => "trains#show"
  get "/stations/bikes" => "bikes#show"

  post "/stations/buses" => "buses#update"
  post "/stations/trains" => "trains#update"
  post "/stations/bikes" => "bikes#update"

  get "/predictions/buses" => "buses#refresh"
  get "/predictions/trains" => "trains#refresh"
  get "/predictions/bikes" => "bikes#refresh"
  
  delete "/stations/buses" => "buses#delete"
  delete "/stations/trains" => "trains#delete"
  delete "/stations/bikes" => "bikes#delete"
end

