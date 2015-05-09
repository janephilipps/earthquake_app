class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to_user_path(@user.id)
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:email, :email_confirmation, :password, :password_confirmation, :first_name, :last_name)
  end

  def find_user
    @user = User.find(params[:id])
  end

  def edit
  end
end
