Rails.application.routes.draw do
  get "dashboard", to:'dashboard#index'
  root to:'welcome#index'
  get "feeds", to:'welcome#add'
  
  devise_scope :user do
    get 'profile/edit'    => 'devise/registrations#edit',   :as => :edit_user_registration
    get 'profile/cancel'  => 'devise/registrations#cancel', :as => :cancel_user_registration
  end

  devise_for  :users,
              :path => '',
              :path_names =>
              { :sign_in =>       'connexion',
                :sign_out =>      'logout',
                :sign_up =>         "",
                :registration =>  'inscription',
                :edit =>          'edit'
              }
                              
              
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
