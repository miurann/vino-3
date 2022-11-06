class AdminUsersController < ApplicationController
  before_action :set_admin_user, only: %i[ show edit update destroy ]

  def index
    @admin_users = AdminUser.all
  end

  def show
  end

  def new
    @admin_user = AdminUser.new
  end

  def edit
  end

  def create
    @admin_user = AdminUser.new(admin_user_params)
    if @admin_user.save
      redirect_to login_path
    else
      render :new
    end
  end

  def update
    if @admin_user.update(admin_user_params)
      redirect_to admin_user_url(@admin_user), notice: "User was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @admin_user.destroy!
      redirect_to admin_users_url, notice: "User was successfully destroyed."
  end

  private

    def set_admin_user
      @admin_user = AdminUser.find(params[:id])
    end

    def admin_user_params
      params.require(:admin_user).permit(:email, :password, :password_confirmation, :name)
    end
end
