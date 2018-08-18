class ValvesController < ApplicationController
  before_action :authenticate_user

  # POST /valves
  def create
    @valve = Valve.new(valve_params)
    @valve.user = current_user

    if @valve.save
      render json: @valve, status: :created
    else
      render json: @valve.errors, status: :unprocessable_entity
    end
  end

  private
    def valve_params
      params.require(:valve).permit(:name, :serial)
    end
end
