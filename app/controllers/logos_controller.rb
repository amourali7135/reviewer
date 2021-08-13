class LogosController < ApplicationController

    # Get rid of this later, bad UX.
    def new 
      @business = Business.find(params[:business_id])
      @logo = Logo.new
      # raise
    end
    
    def create
      @logo = Logo.new(logo_params)
      @business = Business.find(params[:business_id])
      @logo.business = @business
      @business.logo = @logo
        if @logo.save
          flash[:notice] = "You've successfully added your logo!"
          redirect_to business_dashboard_path
        else
          flash[:notice] = "There was an error, please try again!"
          redirect_back(fallback_location: new_business_logo_path(@business, @logo))
        end
        # raise
      end

      def edit
        @logo = Logo.find(params[:id])
        @business = Business.find(params[:business_id])
      end    
    
      def update
        @logo = Logo.find(params[:id])
        @business = Business.find(params[:business_id])
        if @logo.update(logo_params)
          flash[:notice] = "You've successfully updated your logo"
          redirect_to @business.business_dashboard
        else
          flash[:error] = "There was an error, please try again!"
          redirect_to @business.business_dashboard
        end
      end
    
      def destroy
        @logo = Logo.find(params[:id])
        @business = Business.find(params[:business_id])
        @logo.destroy
        flash[:notice] = "This logo was successfully deleted!"
        redirect_to @business.business_dashboard
      end
    
      private
    
      def logo_params
        params.require(:logo).permit( :photo, :business_id )
      end
end
