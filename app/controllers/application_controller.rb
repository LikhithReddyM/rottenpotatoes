class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_cookies
  private
  def set_cookies
    cookies[:sort] = params[:sort] if params[:sort]
    cookies[:direction] = params[:direction] if params[:direction]
  end
end
