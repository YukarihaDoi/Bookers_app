Rails.application.routes.draw do

  get '/top' => 'homes#top'
  get 'books/new'  => 'books#new'
  
  post 'books' => 'books#create'
  
  get 'books/index'  => 'books#index'
  get 'books' => 'books#index'
  get 'books/show'  => 'books#show'
  get 'books/edit'  => 'books#edit'


# resources :books
# Railsのルーティングは、「上からの記載順に」マッチ
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



# https://railsguides.jp/routing.html参照
end