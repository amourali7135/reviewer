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
    # raise
    @business = Business.find(params[:business_id])
    @verificationqr = Business.find(params[:business_id]).verificationqr
    # @url = request.path_info
    if current_user.present? && params[:verificationqr][:user_id].present? && params.has_key?(:business_id) && params.has_key?(:verificationqr) && request.path_info.include?('validation')
      @verificationqr.update(verificationqr_params)
      flash[:success] = "You've successfully verified your interaction!"
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
