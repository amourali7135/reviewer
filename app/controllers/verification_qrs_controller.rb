class VerificationQrsController < ApplicationController
  #Pundit for business show/create only via callbacks

  # def index
  #   @verification_qrs = VerificationQr.where(user.id = current_user.id)
  # end

  def show
    @verification_qr = VerificationQr.find(params[:id])
  end

  def update
    @verification_qr = VerificationQr.find(params[:id])
    @business = @verification_qr.business_id
    if current_user.review.includes?(@business.id) || current_user.feedback.includes?(@business.id)
      @verification_qr.update(verification_qr_params)
      flash[:notice] = "You've successfully verified your interaction!"
      redirect_to @verification_qr
    else
      flash[:error] = "This user hasn't provided feedback or a review for this business, please try again after they do!"
      render 'show'
    end

  end

  def create
    @verification_qr = verification_qr.new(verification_qr_params)
    @business = Business.find(params[:id])
  end

  def

  end

  private

  def verification_qr_params
    params.require(:verification_qr).permit( :user_id, :business_id )                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    )
  end

end
