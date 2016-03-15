class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in(@user)
      flash[:success] = "You are logged in successfully"
      redirect_to users_path
    else
      flash[:notice] = "Please enter correct credential"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url
  end

end
