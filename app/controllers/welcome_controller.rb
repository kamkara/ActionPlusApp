class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: %i[add]
  def index
    redirect_to dashboard_path if user_signed_in?
  end  
end
