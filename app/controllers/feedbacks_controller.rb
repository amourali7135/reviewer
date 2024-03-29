class FeedbacksController < ApplicationController
  def index
    # experiment
    @business = Business.find(params[:business_id])
    # Seriously...this is it?  So easy.
    # @business = current_user.business.id  # NOPE!
    # @business.feedbacks loop versus this
    # @feedbacks = Feedback.find_by(business_id: @business.id)
    # @feedbacks = Business.feedback
    # raise
  end

  def new
    @feedback = Feedback.new
    @business = Business.find(params[:business_id])
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @business = Business.find(params[:business_id])
    @feedback.user_id = current_user.id
    @feedback.business = @business
    if @feedback.save
      flash[:notice] = "This feedback form was successfully sent!"
      redirect_to @feedback.business
    else
      render "new"
    end
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def update
    @feedback = Feedback.find(params[:id])
    if @feedback.update(feedback_params)
      flash[:notice] = "This feedback was successfully updated!"
      redirect_to @feedback
    else
      flash[:error] = "There was an error, please try again!"
      render 'edit'
    end
  end

  #Is this even needed?  Would be better for closed permanently.
  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    flash[:notice] = "This feedback profile was successfully deleted!"
    redirect_to root_path
  end

  def edit
    @feedback = Feedback.find(params[:id])
    @business = Business.find(params[:business_id])
  end

  private

  def feedback_params
    params.require(:feedback).permit( :title, :rating, :advice, :proof, :date_interacted, photos: [] )
  end

end
