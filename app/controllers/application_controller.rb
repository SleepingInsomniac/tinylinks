class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :require_login, except: [:go, :login, :try_login, :logout]
  
  
  private
  
  def require_login
    # unless session[:user_id] render status: 301, text: 'Forbidden' and return
    redirect_to controller: :users, action: :login and return unless session[:user_id]
  end
  
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
  
end
