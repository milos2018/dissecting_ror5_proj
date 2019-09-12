class ApplicationController < ActionController::Base
  include SetSource

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  #before_filter :configure_permitted_parameters if :devise_controller?

  #def configure_permitted_parameters
  #  devise_perameters_sanitizer.permit(:sign_up, keys: [:name])
  #  devise_perameters_sanitizer.permit(:account_update, keys: [:name])
  #end
end