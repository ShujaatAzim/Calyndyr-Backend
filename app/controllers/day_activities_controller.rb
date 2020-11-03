class DayActivitiesController < ApplicationController

  def index
    @day_activities = DayActivity.all
    render json: @day_activities.to_json()
  end

  def show
    @day_activity = DayActivity.find_or_create_by(day_params)
    render json: @day_activity.to_json()
  end

end
