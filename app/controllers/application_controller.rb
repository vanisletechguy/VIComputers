class ApplicationController < ActionController::Base
  include Pundit
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session


  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  rescue_from Pundit::AuthorizationNotPerformedError, with: :user_not_authorized

  private
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  def handle_unverified_request
  forgery_protection_strategy.new(self).handle_unverified_request
end
end
