class PerksController < ApplicationController
  def index
    # @business = Business.find(params[:business_id]) #is this necessary though?  Test it out.
    @perks = Perk.all
  end

  def new
    @business = Business.find(params[:business_id])
    @perk = Perk.new
  end

  def create
    @perk = Perk.new(perk_params)
    @business = Business.find(params[:business_id])
    @perk.business = @business
    if @perk.save
      flash[:notice] = "You've successfully added your perk!"
      redirect_to business_dashboard_path
    else
      render "new"
    end
  end

  def show
    @perk = Perk.find(params[:id])
  end

  def update
    @perk = Perk.find(params[:id])
    if @perk.update(perk_params)
      flash[:notice] = "You've successfully updated your perk"
      redirect_to business_dashboard_path
    else
      flash[:error] = "There was an error, please try again!"
      render 'edit'
    end
  end

  #Is this even needed?  Would be better for closed permanently.
  def destroy
    @perk = Perk.find(params[:id])
    @perk.destroy
    flash[:notice] = "This perk was successfully deleted!"
    redirect_to root_path
  end

  def edit
    @perk = Perk.find(params[:id])
    @business = Business.find(params[:business_id])
  end

  private

  def perk_params
    params.require(:perk).permit( :title, :description, :count, :active, :business_id, :service_id)
  end

end
