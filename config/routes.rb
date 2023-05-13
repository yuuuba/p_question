Rails.application.routes.draw do
  get 'questions/new'
  get 'questions/create'
  get 'questions/destroy'
  get 'answers/new'
  get 'answers/create'
  get 'answers/destroy'
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
