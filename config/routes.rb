Rails.application.routes.draw do
  devise_for :users
  root  'entis#index'
  get   'entis'      =>  'entis#index'
  get   'entis/new'  =>  'entis#new'
  post  'entis'      =>  'entis#create'
  delete 'entis/:id'  =>  'entis#destroy'
  patch   'entis/:id'  => 'entis#update'
  get   'entis/:id/edit'  => 'entis#edit'

end
