class ReviewsController < ApplicationController
  def index
    @businesses = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
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
    flash[:notice] = "This review profile was successfully deleted!"
    redirect_to root_path
  end

  def edit
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit( :title, :rating, :content, :userful, :funny, :cool, :questionable, :food_rating, :service, :value, :atmosphere, photos: [], :proof )
  end

end
