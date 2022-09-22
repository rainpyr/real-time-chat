class ApplicationController < ActionController::Base
  # To turn off CSRF completely, disable it in ApplicationController:
  # skip_forgery_protection
  skip_before_action :verify_authenticity_token

  include Knock::Authenticable
end
