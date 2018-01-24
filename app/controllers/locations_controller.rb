class LocationsController < ApplicationController
  def create
    @location = Location.new(location_params)
    redirect_to weather_informations_path(@location.attributes)
  end

  private

  def location_params
    params.require(:location).permit(:address)
  end
end
