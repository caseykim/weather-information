class LocationsController < ApplicationController
  def create
    redirect_to weather_informations_path(Location.new(location_params).attributes)
  end

  private

  def location_params
    params.require(:location).permit(:address)
  end
end
