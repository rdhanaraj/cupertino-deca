class PagesController < ApplicationController
  def home
    if user_signed_in?
      redirect_to events_path
    end
  end

  def data
    @events = Event.all 
    @users = User.all
    @attendances = Attendance.all
  end

  def members
    @events = Event.all 
    @users = User.all
    @attendances = Attendance.all
  end

  def resources
    @resources = Resource.all 
  end
end
