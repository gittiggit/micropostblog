class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Created successfully"
      redirect_to @user
    else
      flash[:notice] = "Not created"
      render :new
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    # binding.pry
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
