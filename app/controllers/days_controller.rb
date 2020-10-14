class DaysController < ApplicationController

  def index
    @days = Day.all
    render json: DaySerializer.new(@days).to_serialized_json
  end

  def show
    @day = Day.find(params[:id])
    render json: DaySerializer.new(@day).to_serialized_json
  end
  
end
