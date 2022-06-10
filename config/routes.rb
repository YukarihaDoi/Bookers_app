Rails.application.routes.draw do
  
  get '/new'  =>'books#new'
  post '/index'=>'books#create' 
  
  get '/index' =>'books#index'

  get '/show' =>'books#show'
  get '/edit' =>'books#edit'
  get '/top' =>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
