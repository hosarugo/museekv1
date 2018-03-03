class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller? #HR - signifie qu'avant toute action on exécute la méthode configure_permitted_paramters si on appelle le controller lié à Devise.

  protected
  def configure_permitted_parameters # RH - ici les actions sont inscription (:sign_up) et mise à jour du profil (:account_update). En gros, vous avez autorisé le champ fullname à l'inscription et lors de la modification du profil.
      devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:full_name])
  end
end
