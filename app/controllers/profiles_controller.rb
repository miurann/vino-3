class ProfilesController < ApplicationController
  before_action :set_user
  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy!
      redirect_to root_path, notice: "User was successfully destroyed."
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :name, :avatar)
  end
end
