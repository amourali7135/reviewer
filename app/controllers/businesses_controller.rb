class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    if @business.save
      flash[:notice] = "This business's profile was successfully created!"
      redirect_to @business
    else
      render "new"
    end
  end

  def show
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      flash[:notice] = "This business's profile was successfully updated!"
      redirect_to @business
    else
      flash[:error] = "There was an error, please try again!"
      render 'edit'
    end
  end

  #Is this even needed?  Would be better for closed permanently.
  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    flash[:notice] = "This business profile was successfully deleted!"
    redirect_to root_path
  end

  def edit
    @business = Business.find(params[:id])
  end

  private

  def business_params
    params.require(:business).permit( :name, :phone, :address, :latitude, :longitude, :price_range, :photo, :claimed, :about, :founded, :website, :instagram, :facebook, health_safety: [], :highlights, :accessibility, :offerings, :amenities, :payments, :parking, :influencer_hub, :local_favorite, :restaurant, :delivery_options, :alcohol, :takeout, :vegan_vegetarian_friendly, :pet_friendly, :delivery_options, :kid_friendly, :scenic, :service_options, :reservations, :verified ,tag_list: [] )
  end


end
