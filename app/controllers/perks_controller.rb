class PerksController < ApplicationController
  def index
    @businesses = Perk.all
  end

  def new
    @perk = Perk.new
  end

  def create
    @perk = Perk.new(perk_params)
    if @perk.save
      flash[:notice] = "This perk's profile was successfully created!"
      redirect_to @perk
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
      flash[:notice] = "This perk's profile was successfully updated!"
      redirect_to @perk
    else
      flash[:error] = "There was an error, please try again!"
      render 'edit'
    end
  end

  #Is this even needed?  Would be better for closed permanently.
  def destroy
    @perk = Perk.find(params[:id])
    @perk.destroy
    flash[:notice] = "This perk profile was successfully deleted!"
    redirect_to root_path
  end

  def edit
    @perk = Perk.find(params[:id])
  end

  private

  def perk_params
    params.require(:perk).permit( :title, :description, :count, :active, )
  end

end
