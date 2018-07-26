class DevicesController < ApplicationController
  before_action :authenticate_user

  def index
    # get devices for current_user
  end
end
