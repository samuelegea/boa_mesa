class ApplicationController < ActionController::API
  # before_action :configure_permitted_parameters, if: :devise_controller?

  def fallback_index_html
      render :file => 'public/index.html'
  end


    protected

    # def configure_permitted_parameters
    #   devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    # end
end
