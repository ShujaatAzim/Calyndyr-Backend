class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    render json: ActivitySerializer.new(@activities).to_serialized_json
  end

  def show
    @activity = Activity.find(params[:id])
    render json: ActivitySerializer.new(@activity).to_serialized_json
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)
    @activity.save
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.delete
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :complete)
  end

  
end
