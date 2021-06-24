class ServicesController < ApplicationController
  def index
    @services = Service.all
  end
  
  def new
    @service = Service.new
    @business = Business.find(params[:business_id])
  end
  
  def create
    @service = Service.new(service_params)
    if @service.save
      flash[:notice] = "This service was successfully added!"
      redirect_to @service
    else
      render "new"
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
    params.require(:service).permit( :name, :description, :price_cents, :photo, tag_list: [] )
  end
  
end
