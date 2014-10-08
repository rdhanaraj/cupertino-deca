class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :surname
    devise_parameter_sanitizer.for(:account_update) << :grade

    devise_parameter_sanitizer.for(:account_update) << :student_id
    devise_parameter_sanitizer.for(:account_update) << :birthday
    devise_parameter_sanitizer.for(:account_update) << :gender
    devise_parameter_sanitizer.for(:account_update) << :address
    devise_parameter_sanitizer.for(:account_update) << :phone_number

    devise_parameter_sanitizer.for(:account_update) << :parent_name
    devise_parameter_sanitizer.for(:account_update) << :parent_email
    devise_parameter_sanitizer.for(:account_update) << :parent_phone_number

  end
end
