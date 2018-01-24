class WeatherInformationsController < ApplicationController
  def index
    @location_name = params[:address] || Location::DEFAULT[:address]
  end
end
