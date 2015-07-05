class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }

    if Rails.env.production?
      { host: 'fluicity.herokuapp.com' }
    else
      { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale, host: ENV['HOST'] || 'localhost:3000' }
    end
  end
  # Let's DYNAMICALLY build the markers for the view.
  def contact

  end
end


