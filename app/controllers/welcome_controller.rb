class WelcomeController < ApplicationController
  
  def index
    redirect_to memberspace_path if user_signed_in? && current_user.membership_category === "particulier"
  end  
end
