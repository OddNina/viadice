class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def redirect_to_profile_form!
    if user_signed_in? and current_user.profile.nil?
      redirect_to edit_myprofile_url
    end
  end

end
