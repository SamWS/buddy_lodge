class SessionController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      # think of session as a global hash
      session[:user_id] = @user.id
      redirect_to '/'
    else
      # boo
      redirect_to '/' # stay at the new login form
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
