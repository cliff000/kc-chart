Rails.application.routes.draw do
  root 'maches#mychart'
  get 'form', to:'maches#form'
  post 'form', to:'maches#create'
  get 'sended_form', to:'maches#sended_form'
  get 'mychart', to:'maches#mychart'
  get 'mychart/my_duel_data.csv', to:'maches#mydata_csv'
  get 'totalchart', to:'maches#totalchart'
  get 'edit/:id', to: 'maches#edit'
  patch 'edit/:id', to: 'maches#update'
  get 'delete/:id', to:'maches#delete'
  get 'all_delete', to:'maches#all_delete'
  post 'all_delete', to:'maches#all_delete'
  get 'user_list', to:'maches#user_list'
  get 'chart/:deck', to:'maches#deckchart'

  post 'select_kc', to:'maches#select_kc'
  post 'select_datetime', to:'maches#select_datetime'
  post 'select_dprange', to:'maches#select_dprange'
  get 'create_kc', to:'maches#create_kc'

  get 'test', to:'maches#test'
  
  devise_for :accounts

  Rails.application.routes.draw do
    root 'chart#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
