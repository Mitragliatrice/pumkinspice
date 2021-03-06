module DeviseWhitelist
  extend ActiveSupport::Concern

# THIS IS ALL TO CAPTURE NAMES IN THE DATABASE, TEST BY LOGING IN AND GOING TO /edit
  included do
    before_action :configure_permited_parameters, if: :devise_controller?
  end

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number, :github, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_number, :github, :avatar])
  end
#------------------------------------------------------------------------------------
end