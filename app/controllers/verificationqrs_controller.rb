class VerificationqrsController < ApplicationController
  #Pundit for business show/create only via callbacks

  # def index
  #   @verificationqrs = Verificationqr.where(user.id = current_user.id)
  # end

  def show
    # @verificationqr = Verificationqr.find(params[:id])
    ##  Or...
    @business = Business.find(params[:business_id])
    @verificationqr = Business.find(params[:business_id]).verificationqr
  end

  def update
    # @verificationqr = VerificationQr.find(params[:id])
    ## or
    @verificationqr = Business.find(params[:business_id]).verificationqr
    # @business = @verificationqr.business_id
    # if current_user.review.includes?(@business.id) || current_user.feedback.includes?(@business.id)
    if current_user.present?
      @verificationqr.update(verificationqr_params)
      flash[:notice] = "You've successfully verified your interaction!"
      redirect_to @verificationqr.business  # Or user dashboard, figure out l8r after views are up.
    else
      flash[:error] = "This user hasn't provided feedback or a review for this business, please try again after they do!"
      render 'show'
    end

  end

  def create
    @verificationqr = verificationqr.new(verificationqr_params)
    @business = Business.find(params[:id])
  end

  private

  def verificationqr_params
    params.require(:verificationqr).permit(:business_id, :user_id)
  end

end