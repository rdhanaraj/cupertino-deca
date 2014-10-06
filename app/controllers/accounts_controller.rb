class AccountsController < Devise::RegistrationController
  before_filter :configure_permitted_parameters

  def create
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:name, :phone, :organization)
  end
end