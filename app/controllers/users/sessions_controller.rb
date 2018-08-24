class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    @masthead_picture = 'bg_profile_settings'
    @head_title = "Login to Your Account"
    super
  end

  # POST /resource/sign_in
   def create
    @masthead_picture = 'bg_profile_settings'
    @head_title = "Login to Your Account"
     super
   end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
