class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    render json: ActivitySerializer.new(@activities).to_serialized_json
  end

  def show
    @activity = Activity.find(params[:id])
    render json: ActivitySerializer.new(@activity).to_serialized_json
  end
  
end
