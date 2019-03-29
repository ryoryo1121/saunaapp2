class UsersController < ApplicationController
    before_action :admin_check, only: [:index]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def admin_check
      redirect_to root_path unless current_user.admin?
  end
end
