class DevicesController < ApplicationController
  before_action :authenticate_user

  def index
    valves = current_user.valves
    sensors = current_user.sensors
    render :json => { valves: valves, sensors: sensors }
  end
end
