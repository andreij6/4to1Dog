class ApplicationController < ActionController::Base
  
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
  
  
  private
  def render_permission_error
    render file: 'public/permission_error', status: :error, layout: false
  end
end
