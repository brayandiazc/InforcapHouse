class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    added_attrs = %i[ email password password_confirmation remember_me name phone role ]

    devise_parameter_sanitizer.permit :sign_up, keys: %i[email password password_confirmation name phone]
    devise_parameter_sanitizer.permit :sign_in, keys: %i[email password remember_me]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
