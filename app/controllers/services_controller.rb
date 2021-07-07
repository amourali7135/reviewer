class ServicesController < ApplicationController
  def index
    @services = Service.all
  end
  
  def new
    @service = Service.new
    @business = Business.find(params[:business_id])
    # raise
  end
  
  def create
    @service = Service.new(service_params)
    @business = Business.find(params[:business_id])
    @service.business = @business
    if @service.save
      flash[:notice] = "This service was successfully added!"
      # redirect_to @service
      redirect_to business_service_path(@business, @service), method: :get 
    else
      flash[:notice] = "There was an error, please try again!"
      # redirect_to new_business_service_path(business_id: @business.id)
      render "new"
      # raise 
    end
  end
  
  def show
    @service = Service.find(params[:id])
  end
  
  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      flash[:notice] = "This service's characteristics was successfully updated!"
      redirect_to @service
    else
      flash[:error] = "There was an error, please try again!"
      render 'edit'
    end
  end
  
  #Is this even needed?  Would be better for closed permanently.
  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    flash[:notice] = "This service profile was successfully deleted!"
    redirect_to root_path
  end
  
  def edit
    @service = Service.find(params[:id])
  end
  
  private
  
  def service_params
    params.require(:service).permit( :name, :description, :food, :price_cents, :photo, :tag_list, tag_list: [], food_tagging_list: [], service_tagging_list: [] )
  end
  
end
