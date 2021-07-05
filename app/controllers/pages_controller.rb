class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :explore, :help, :contact, :team, :career, :updates, :blog, :verify]
  
  def home
    
  end
  
  def about
    
  end
  
  def explore
    
  end
  
  def help
    
  end
  
  def contact
    
  end
  
  def business_dashboard
    if !current_user.business
      flash[:notice] = "Only business owners have access to dashboards!"
      redirect_to root_path
    else
      #This is fucking huge dude, god damn.  Make it a better query.  
      #Should I use where or find_by?  Try them both...
      @business = Business.find_by(user_id: current_user.id)#.includes([:reviews])
      # @review = Review.find_by(business_id: @business.id)
      # @feedback = Feedback.find_by(business_id: @business.id)  #I need this on a separate page, not the dashboard.
      # @perk = Perk.where(business_id: @business.id)
      # @service = Service.where(business_id: @business.id)
      # @logo = @business.logo #Logo.where(business_id: @business.id)
      # raise
    end
   
  end
  
  def user_dashboard
    #Refactor the shit out of this homie, god damn.  
    @user = current_user
    @reviews = Review.where(user_id: current_user.id)
    @redemptions = Redemption.where(user_id: current_user.id)
    @recommendationslists = Recommendationslist.where(user_id: current_user.id)
    @interactionverifications = Interactionverification.where(user_id: current_user.id)
    @feedbacks = Feedback.where(user_id: current_user.id)
  end
  
  def following
    
  end
  
  def followers
    
  end
  
  def liked
    
  end
  
  def team
    
  end
  
  def career
    
  end
  
  def updates
    
  end
  
  def blog
    
  end
  
  def verify
    
  end
  
end
