Rails.application.routes.draw do
  get '/new'  =>'homes#top'
  get '/index' =>'homes#top'
  get '/show' =>'homes#top'
  get '/edit' =>'homes#top'
  get '/top' =>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
