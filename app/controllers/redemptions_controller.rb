class RedemptionsController < ApplicationController

  def index

  end

  def create

  end


  private

  def redemption_params
    params.require(:redemption).permit(  )
  end

end
