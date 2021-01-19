Rails.application.routes.draw do
  
  get '/campers/new', to: "campers#new", as: "new_camper"

  get '/campers', to: "campers#index", as: "campers"
  post '/campers', to: "campers#create"

  get '/campers/:id/edit', to: "campers#edit", as: "edit_camper"
  patch '/campers/:id', to: "campers#update"

  get '/campers/:id', to: "campers#show", as: "camper"

  get '/activities', to: "activities#index", as: "activities"
  
  get '/activities/:id', to: "activities#show", as: "activity"

  get '/signups/new', to: "signups#new", as: "new_signup"
  post '/signups', to: "signups#create"

  delete '/campers/:id', to: "campers#delete", as: "delete_camper"
  
  
end
