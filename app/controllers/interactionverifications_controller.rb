class InteractionverificationsController < ApplicationController

  #Pundit for business show/create only via callbacks

  # def index
  #   # @interactionverifications = Interactionverification.where(user.id = current_user.id)
  #   @interactionverifications = Interactionverification.all
  # end

  # def new
  #   @interactionverification = Interactionverification.new(interactionverification_params)
  #   # redirect_to business_qr_verification_validation_path(params)
  # end

  def show
    @business = Business.find(params[:business_id])
    @interactionverification = Interactionverification.find(params[:id])
    @url = request.path_info
    # raise
  end

  def create
    # raise
    @interactionverification = Interactionverification.new(interactionverification_params)
    @business = Business.find(params[:business_id])
    if
      Interactionverification.exists?(business_id: @business.id, user_id: current_user.id)
      flash[:alert] = "You've already verified your interaction together!"
      redirect_to business_verificationqr_path(@business)
    elsif
      current_user.present? && params.has_key?(:user_id) && params.has_key?(:business_id) && params.has_key?(:controller) && params.has_key?(:action) && request.path_info.include?('validation') && params.has_value?("interactionverifications")
      @interactionverification.save
      flash[:notice] = "You've successfully verified your interaction with each other!"  #Ajax this later for the other side.
      # redirect_to @business # Or user dashboard, figure out l8r after views are up.
      redirect_to @business
    else
      flash[:alert] = "There was an error, please try again!"
      redirect_to business_verificationqr_path(@business)
    end
  end

  # def update
  #   # @business = Business.find(params[:business_id])
  #   # # @url = request.path_info
  #   # if current_user.present? && params.has_key?(:user_id) && params.has_key?(:business_id) && params.has_key?(:controller) && params.has_key?(:action) && request.path_info.include?('validation') && params.has_value?("interactionverifications")
  #   #   @interactionverification.save(interactionverification_params)
  #   #   flash[:notice] = "You've successfully verified your interaction with each other!"  #Ajax this later for the other side.
  #   #   # redirect_to @business # Or user dashboard, figure out l8r after views are up.
  #   #   redirect_to @business
  #   # else
  #   #   flash[:alert] = "There was an error, please try again!"
  #   #   render 'show'
  #   # end

  # end

  private

  def interactionverification_params
    # params.require(:interactionverification).permit(:business_id, :user_id)
    params.permit(:business_id, :user_id)
  end

end
