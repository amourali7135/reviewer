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
    @business = Business.where(user_id: current_user.id)
    if
      @business.exists? && @business.
    else !current_user.business_owner_role
      flash[:notice] = "Only business owners have access to business dashboards!"
      redirect_to root_path
    end
    #This is fucking huge dude, god damn.  Make it a better query.  
    @reviews = Review.where(business_id: @business.id)
    @feedbacks = Feedback.where(business_id: @business.id)
    @perks = Perk.where(business_id: @business.id)
    @services = Service.where(business_id: @busienss.id)
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
