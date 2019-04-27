class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #Whitelist the following form fields so that we can process them,
  #if comingn from a Devise signup form
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:stripe_card_token, :email, :password, :password_confirmation) }
    end
end

def links_params
  params.require(:link).permit(:title)
end 
