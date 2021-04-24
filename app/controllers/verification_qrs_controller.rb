class VerificationQrsController < ApplicationController

  def index
    @verification_qrs = VerificationQr.where(user.id = current_user.id)
  end

  def show
    @verification_qr = VerificationQr.find(params[:id])
  end

  def update

  end

  def create

  end

  private

  def verification_qr_params
    params.require(:verification_qr).permit( :user_id, :business_id )
  end

end
