Rails.application.routes.draw do
  resources :books, only: [:show, :index, :edit, :create, :destroy, :update] #コントローラー名と同じにする
 #↑booksはコントローラー名と一緒
 
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: 'homes#top'
end