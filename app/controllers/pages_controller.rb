class PagesController < ApplicationController
  def home
  end

  def data
    @events = Event.all 
    @users = User.all
  end
end
