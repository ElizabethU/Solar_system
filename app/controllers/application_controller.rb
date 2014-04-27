class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def on_a_phone?
    request.user_agent.downcase.include?('mobile')
  end

  helper_method :on_a_phone?
end
