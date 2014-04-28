class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def on_a_phone?
    request.user_agent.downcase.include?('mobile')
  end

  def safari?
    browser.include?('Safari') && !request.env['HTTP_USER_AGENT'].include?('Chrome')
  end

  def browser
    request.env['HTTP_USER_AGENT']
  end

  helper_method :on_a_phone?
  helper_method :safari?
  helper_method :browser
end
