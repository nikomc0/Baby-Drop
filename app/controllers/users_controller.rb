class UsersController < ApplicationController

  def update
    @user = User.find(params[:id])
    @user.assign_attributes(user_params)

    if @user.save
      flash[:notice] = "User was updated."
      redirect_to profile_path
    else
      flash.now[:alert] = "There was an error saving the user."
      render :edit
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone, :child, :spouse, :facility, :trial)
    end
end
