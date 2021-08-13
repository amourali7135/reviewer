class ProjectsController < ApplicationController
    def index
        @business = Business.find(params[:business_id])
        @projects = @business.projects.all
        # n + 1?  Check and see.
        # Should have this load on business show page really, not on the index.  Save time/UX.
        # Paginate it later on.
    end
    
    def new
        @project = Project.new
        @business = Business.find(params[:business_id])
    end
    
    def create
        @project = Project.new(review_params)
        @business = Business.find(params[:business_id])
        @project.business = @business
        if @project.save
            flash[:notice] = "This project pwas successfully created!"
            redirect_to @project
        else
            render "new"
        end
    end
    
    def show
        @project = Project.find(params[:id])
    end
    
    def update
        @project = Project.find(params[:id])
        if @project.update(review_params)
            flash[:notice] = "This project was successfully updated!"
            redirect_to @project
        else
            flash[:error] = "There was an error, please try again!"
            render 'edit'
        end
    end
    
    #Is this even needed?  Would be better for closed permanently.
    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        flash[:notice] = "This project was successfully deleted!"
        redirect_to root_path
    end
    
    def edit
        @project = Project.find(params[:id])
        @business = Business.find(params[:business_id])
    end
    
    private
    
    def review_params
        params.require(:project).permit( :title, :description, :price_cents, :offerings, :completion, :time_taken, :business_id, :service_id, photos: [] )
    end
    
end
