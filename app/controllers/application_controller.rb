class ApplicationController < ActionController::Base
	layout 'blogs'
    before_action :configure_permited_parameters, if: :devise_controller?        

    def configure_permited_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:status, :image, :first_name, :last_name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:status, :image, :first_name, :last_name])
    end
	
end