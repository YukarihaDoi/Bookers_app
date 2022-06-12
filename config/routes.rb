Rails.application.routes.draw do

  get '/top' =>'homes#top'
  # OK

  get 'a/books' => 'books#index',as: 'index'
  post '/a'=> 'books#create',as: 'create'

  delete 'a/books/:id' => 'books#destroy', as: 'destroy_book'
  get 'a/books/:id' => 'books#show',as: 'show'

  get 'a/books/:id/edit' => 'books#edit' , as: 'edit_book'
  patch 'a/books/:id' => 'books#update' , as: 'update_book'

# resources :books
# Railsのルーティングは、「上からの記載順に」マッチ
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



# https://railsguides.jp/routing.html参照
end