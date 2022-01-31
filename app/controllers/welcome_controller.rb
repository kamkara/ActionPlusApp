class WelcomeController < ApplicationController
  
  before_action :set_user_signed_in?, only: %i[index]


  def index
  end
  
  def add
  end
  
  private
  def set_user_signed_in?    
    redirect_to feeds_path if user_signed_in?
  end
end
