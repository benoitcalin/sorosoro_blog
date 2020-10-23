class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # For metatags
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
