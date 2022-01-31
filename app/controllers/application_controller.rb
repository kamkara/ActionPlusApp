class ApplicationController < ActionController::Base
    before_action :current_user_auhenticate
    before_action :current_user_unauhenticate
    
    
    private 
    #redirect current_user to feed if signed
    def current_user_auhenticate?
      redirect_to feeds_path if user_signed_in?
    end

    #redirect current_user to feed if  not signed
    def current_user_unauhenticate
      redirect_to root_path  if !user_signed_in?
    end
end
