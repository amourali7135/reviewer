class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

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

  end

  def user_dashboard

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

end
