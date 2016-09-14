class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
  end

  def create
    pets = Pet.new
    pets.name = params[:name]
    pets.species = params[:species]
    pets.age = params[:age]
    pets.describe = params[:describe]
    pets.avatar = params[:avatar]
    pets.listing_id = session[:user_id]
    if pets.save
      redirect_to '/'
    else
      redirect_to '/pets/new'
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
