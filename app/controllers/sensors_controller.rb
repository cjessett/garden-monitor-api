class SensorsController < ApplicationController
  before_action :authenticate_user

  # POST /sensors
  def create
    @sensor = Sensor.new(sensor_params)
    @sensor.user = current_user

    if @sensor.save
      render json: @sensor, status: :created
    else
      render json: @sensor.errors, status: :unprocessable_entity
    end
  end

  private
    def sensor_params
      params.require(:sensor).permit(:name, :serial, :valve_id)
    end
end
