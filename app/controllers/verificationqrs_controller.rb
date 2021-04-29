class VerificationqrsController < ApplicationController
  #Pundit for business show/create only via callbacks

  # def index
  #   @verificationqrs = Verificationqr.where(user.id = current_user.id)
  # end

  def show
    # @verificationqr = Verificationqr.find(params[:id])
    ##  Or...
    @business = Business.find(params[:business_id])
    # @verificationqr = Business.find(params[:business_id]).verificationqr
    @verificationqr = @business.verificationqr
    @url = request.path_info
    # request.fullpath
    # if(params.has_key?(:one) && params.has_key?(:two))
    # raise
    # params_test = current_user.id
  end

  def update
    # @verificationqr = VerificationQr.find(params[:id])
    ## or
    # raise
    @business = Business.find(params[:business_id])
    @verificationqr = Business.find(params[:business_id]).verificationqr
    @url = request.path_info
    # @business = @verificationqr.business_id
    # if current_user.review.includes?(@business.id) || current_user.feedback.includes?(@business.id)
    if #current_user.present? && params.has_key?(:user_id) && @url.include?('validation')
      @verificationqr.update(verificationqr_params)
      flash[:notice] = "You've successfully verified your interaction!"
      redirect_to @verificationqr.business  # Or user dashboard, figure out l8r after views are up.
    else
      flash[:error] = "There was an error, please try again!"
      render 'show'
    end

  end

  def create
    @verificationqr = verificationqr.new(verificationqr_params)
    @business = Business.find(params[:id])
  end

  private

  def verificationqr_params
    params.require(:verificationqr).permit(:business_id, :user_id, :format, :verificationqr_id)
  end

end
