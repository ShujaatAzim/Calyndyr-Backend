class DaysController < ApplicationController

  def index
    @days = Day.all
    render json: DaySerializer.new(@days).to_serialized_json
  end

  def show
    @day = Day.find(params[:id])
    render json: DaySerializer.new(@day).to_serialized_json
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.create(day_params)
    render json: @day.to_json()
  end

  def update
    @day = Day.find(params[:id])
    @day.update(day_params)
    render json: @day.to_json()
  end

  def destroy
    @day = Day.find(params[:id])
    @day.delete
  end

  private

  def day_params
    params.require(:day).permit(:date)
  end

end
