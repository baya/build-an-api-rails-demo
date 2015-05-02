class Api::V1::BaseController < ApplicationController

  attr_accessor :current_user
  
  # disable the CSRF token
  protect_from_forgery with: :null_session

  # disable cookies (no set-cookies header in response)
  before_action :destroy_session

  def destroy_session
    request.session_options[:skip] = true
  end

  def api_error(opts = {})
    render nothing: true, status: opts[:status]
  end
  
end
