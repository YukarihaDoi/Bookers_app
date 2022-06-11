Rails.application.routes.draw do
  
  get '/top' =>'homes#top'
  get 'books/new' 
  
  post '/books'=> 'books#create' 
  get '/books' => 'books#index'
  
  get 'books/:id' => 'books#show'
  get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# 　resources :books
# 　Railsのルーティングは、「上からの記載順に」マッチ
end
# ルートを新しく作成する必要がある
# https://railsguides.jp/routing.html参照