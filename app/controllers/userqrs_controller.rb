class UserqrsController < ApplicationController

  def index
    @userqrs = Userqr.where(user_id = current_user.id)
  end

  def create #is this necessary for callback?  Or will it happen anyways?
    @business = Business.find(params[:id])
    @userqr = Userqr.new(userqr_params)
    if current_user.review.save || current_user.feedback.save
      flash[:notice] = "Your verifiable QR code was successfully created!"
      redirect_to current_user.user_dashboard
    else
      flash[:notice] = "Your verifiable QR code was successfully created!"
      redirect_to current_user.user_dashboard
    end
  end

  private

  def userqr_params
    params.require(:userqr).permit(:user_id, :business_id, :feedback_id, :review_id, )
  end

end
