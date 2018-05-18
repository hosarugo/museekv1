class RegistrationsController < Devise::RegistrationsController

  protected
   def update_resource(resource, params)  #cette methode accepte de modifier les parmas user sans demander password
    resource.update_without_password(params)
  end

end
