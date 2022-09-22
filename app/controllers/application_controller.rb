class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  # skip_before_action :verify_authenticity_token has not been defined (ArgumentError)

  include Knock::Authenticable
end
