class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
      redirect_to main_app.root_url, alert: exception.message
  end

  # amend Devise security to permit User.name field to be handled along with Devise fields
  before_action :configure_permitted_parameters, if: :devise_controller?
    protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
