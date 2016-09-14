class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
  end

  def create
    user = User.new
    user.name = params[:name]
    user.surname = params[:surname]
    user.gender = params[:gender]
    user.email = params[:email]
    user.location = params[:location]
    user.birthdate = params[:birthdate]
    user.password = params[:password]
    user.about = params[:about]
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      render :new
    end
  end

  # /users/:id/edit
  def edit
    @user = User.find(params[:id])
    if current_user.id != @user.id 
      redirect_to "/"
    end
  end

  # /users/:id
  def show
    @user = User.find(params[:id])
    render :edit
  end

  def update
    user = User.find(params[:id])
    user.name = params[:name]
    user.surname = params[:surname]
    user.gender = params[:gender]
    user.email = params[:email]
    user.location = params[:location]
    user.birthdate = params[:birthdate]
    user.password = params[:password]
    user.about = params[:about]
    if user.save
      render :edit
    else
      render :new
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/'
  end
end
