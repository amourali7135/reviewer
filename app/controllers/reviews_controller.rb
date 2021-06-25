class ReviewsController < ApplicationController
  def index
    @business = Business.find(params[:business_id])
    @reviews = @business.reviews.all
    # n + 1?  Check and see.
    # Should have this load on business show page really, not on the index.  Save time/UX.
    # Paginate it later on.
  end

  def new
    @review = Review.new
    @business = Business.find(params[:business_id])
  end

  def create
    @review = Review.new(review_params)
    @business = Business.find(params[:business_id])
    if @review.save
      flash[:notice] = "This review was successfully created!"
      redirect_to @review
    else
      render "new"
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "This review was successfully updated!"
      redirect_to @review
    else
      flash[:error] = "There was an error, please try again!"
      render 'edit'
    end
  end

  #Is this even needed?  Would be better for closed permanently.
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "This review was successfully deleted!"
    redirect_to root_path
  end

  def edit
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit( :title, :business_rating, :business_review, :useful, :funny, :cool, :questionable, :service_rating, :service_review, :service_review_too, :service_id, :value, :atmosphere, :proof, :service, :followup, :service_review_too, photos: [] )
  end

end
