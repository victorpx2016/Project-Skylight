class CalendarController < ApplicationController
  def index
    @activities = PublicActivity::Activity.order('created_at DESC').where(owner_id: current_user.friends, 
    owner_type: "User").limit('6')
  end
end
