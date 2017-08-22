class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])

    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.phone = params[:user][:phone]
    @user.child = params[:user][:child]
    @user.spouse = params[:user][:spouse]
    @user.facility = params[:user][:facility]

    if @user.save
      flash[:notice] = "User was updated."
      redirect_to profile_path
    else
      flash.now[:alert] = "There was an error saving the user."
      render :edit
    end
  end
end
