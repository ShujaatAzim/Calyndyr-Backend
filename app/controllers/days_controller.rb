class DaysController < ApplicationController

  def index
    @days = Day.all
    render json: DaySerializer.new(@days).to_serialized_json
  end

  def show
    @day = Day.find(params[:id])
    render json: DaySerializer.new(@day).to_serialized_json
  end

  def find_by_date_string
    @day = Day.find_by(date: date_string)
    render json: DaySerializer.new(@day).to_serialized_json
  end
  
end
