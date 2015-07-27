Rails.application.routes.draw do
  get '/account/:id' => 'application#show'
  get '/create_account' => 'application#create'
  get '/creating' => 'application#create2'
end
