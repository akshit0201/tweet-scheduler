class RegController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_p)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Account Created"
    else
      render :new
    end
  end
  private
  def user_p
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
end
