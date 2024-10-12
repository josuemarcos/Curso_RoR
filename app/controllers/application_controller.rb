class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  protect_from_forgery with: :exception

  private

  def verified_request?
    super || valid_authenticity_token?(session, request.headers['X-CSRF-Token'])
  end
end
