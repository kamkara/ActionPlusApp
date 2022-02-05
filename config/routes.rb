Rails.application.routes.draw do
  
  get "writing", to:"posts#new"
  #get "posts", to:"posts#index"
  get "posts-edit", to:"posts#edit"
  get "posts-destroy", to:"posts#delete"
  resources :posts
  get "dashboard", to:'dashboard#index'
  root to:'welcome#index'
  get "adherer", to:'welcome#add'
  
  devise_scope :user do
    get 'profile/edit'    => 'devise/registrations#edit',   :as => :edit_user_registration
    get 'profile/cancel'  => 'devise/registrations#cancel', :as => :cancel_user_registration
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  devise_for  :users,
              :path => '',
              :path_names =>
                  {  :sign_in =>       'connexion',
                                :sign_out =>      'logout',
                                :sign_up =>       '',
                                :registration =>  'inscription',
                                :edit =>          'edit'
                              }
                              
              
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
