Rails.application.routes.draw do

  root to: 'homes#top'
  get '/top' => 'homes#top'

  get '/books'  => 'books#index' ,as:'books'
  post 'books' => 'books#create'

  # get 'books/index'  => 'books#new'
  # get 'books' => 'books#index'

  get 'books/new/:id' => 'books#show'
  get 'books/:id' => 'books#show',as: 'show'


  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'

  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
#   delete 'books/new' => 'books#destroy', as: 'destroy_book'

 resources :books
# Railsのルーティングは、「上からの記載順に」マッチ
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



# https://railsguides.jp/routing.html参照
end