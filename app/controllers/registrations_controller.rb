class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.is_a?(User)
      edit_profile_path(@user)
    else
      super
    end
  end

end
