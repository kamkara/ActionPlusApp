module ApplicationHelper

    #Onglet Title
def title
 base_title = "Action+ Association"
  if @title.nil?
  base_title
  else
  "#{@title} | #{base_title}"
  end
end

#site description
def description
  "Action+ ......"
end

  #Sign in and up anywhere on app
    def resource_name
    :user
  end
  
  def resource
    @resource ||= User.new
  end
  
  def resource_class
    User
  end
  
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  #USER NOTICE
  def bootstrap_class_for_flash(flash_type)
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-warning'
    when 'notice'
      'alert-info'
    else
      flash_type.to_s
    end
  end
end
