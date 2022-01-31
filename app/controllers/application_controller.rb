class ApplicationController < ActionController::Base
    #Devise strong params
    before_action :configure_permitted_parameters, if: :devise_controller?

    #redirect current_user to feed if signed
    def current_user_auhenticate?
        if user_signed_in?
            redirect_to added_path
        else 
            redirect_to root_path
        end
    end


    protected
    # If you have extra params to permit, append them to the sanitizer.
    def configure_permitted_parameters
    sign_up_params          = [ :first_name, :last_name, :full_name, :matricule, :level_name,
                                :material_name, :school_name, :contact, :city_name, :role, :email,
                                :password, :slug, :gender]
                                
    update_sign_up_params  = [ :school_name, :status, :avatar_profil, :status_payment]
     
    devise_parameter_sanitizer.permit :sign_up, keys: sign_up_params
      devise_parameter_sanitizer.permit :account_update, keys: update_sign_up_params
      devise_parameter_sanitizer.permit :sign_in, keys: [:logged, :password]
    end 
end
