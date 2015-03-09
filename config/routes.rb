Rails.application.routes.draw do
  devise_for :users
  root 'application#home'
  #get '/index' => 'dash#show'
  get "/dashboard" => "dashboard#show"
  get "/stationary/buses" => "buses#show"
  get "/stations/trains" => "trains#show"
  get "/stations/bikes" => "bikes#show"
  post "/stations/buses" => "buses#update"
  post "/stations/trains" => "trains#update"
  post "/stations/bikes" => "bikes#update"
end

