Rails.application.routes.draw do
  get 'books/new'

  get 'books/create'

  get 'books/update'

  get 'books/edit'

  get 'books/destroy'

  get 'books/index'

  get 'books/show'

  get 'about/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
