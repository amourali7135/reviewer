class VerificationqrsController < ApplicationController
  #Pundit for business show/create only via callbacks

  def show
    @business = Business.find(params[:business_id])
    @verificationqr = Business.find(params[:business_id]).verificationqr
    @interactionverification = Interactionverification.new
    # @user_id = current_user.id
    # @url = request.path_info
    # raise
  end

  def create
    @business = Business.find(params[:id])
    @verificationqr = verificationqr.new(verificationqr_params)
  end

  # def update
  #   # raise
  #   @business = Business.find(params[:business_id])
  #   # @verificationqr = Business.find(params[:business_id]).verificationqr
  #   @verificationqr = @business.verificationqrs
  #   # @url = request.path_info
  #   if current_user.present? && params[:verificationqr][:user_id].present? && params.has_key?(:business_id) && params.has_key?(:verificationqr) && request.path_info.include?('validation')
  #     @verificationqr.update(verificationqr_params)
  #     flash[:notice] = "You've successfully verified your interaction!"
  #     # redirect_to @verificationqr.business  # Or user dashboard, figure out l8r after views are up.
  #     redirect_to @business
  #   else
  #     flash[:alert] = "There was an error, please try again!"
  #     render 'show'
  #   end

  # end

  private

  def verificationqr_params
    params.require(:verificationqr).permit(:business_id, :verificationqr_id)
  end

end
