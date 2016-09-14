class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    if !logged_in?
      redirect_to '/users/new'
    end
  end

  def create
    listing = Listing.new
    listing.address = params[:address]
    listing.date = params[:date]
    listing.user_id = session[:user_id]
    listing.pets.new(name: params[:name], species: params[:species], age: params[:age], describe: params[:describe], avatar: params[:avatar])
    listing.house_images.new(image: params[:image])
    if listing.save
      redirect_to '/'
    else
      redirect_to '/listings/new'
    end
  end

  def edit
    @listing = Listing.find(params[:id])
    if current_user.id != @user.id 
      redirect_to "/"
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def update
    listing = Listing.new
    listing.address = params[:address]
    listing.date = params[:date]
    listing.user_id = sessions[:user_id]
    if user.save
      redirect_to '/'
    else
      redirect_to '/listings/new'
    end
  end

  def destroy
    listing = Listing.find(params[:id])
    listing.destroy
    redirect_to '/'
  end
end
