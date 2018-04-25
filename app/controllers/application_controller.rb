class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  def configure_permitted_parameters
  	added_attrs = [:name, :email, :password]
  	devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  	devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  # 	devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(:name, :email, :password) }
  # 	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end

end
