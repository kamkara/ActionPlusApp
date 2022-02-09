Rails.application.routes.draw do
  
  root to:'welcome#index'
  get "donate", to:'donate#index'
  get 'adhesion', to:'membership#index'
  get "adhesion-organisation", to:'membership#organisation'
  get "writing", to:"posts#new"
  get "posts-edit", to:"posts#edit"
  get "posts-destroy", to:"posts#delete"
  get "mission", to:"abouts#index"
  get "mission-created", to:"abouts#new"
  get "mission-edit", to:"abouts#edit"
  get "dashboard", to:'dashboard#index'
  resources :posts
  resources :abouts
  
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
