class WeatherInformationsController < ApplicationController
  def index
    location_params = params.slice(:address, :latitude, :longitude)
    @location = location_params.length == 3 ? location_params : Location::DEFAULT

    @last_seven_days = {}
    (6.days.ago.to_date..Time.zone.today).to_a.each do |day|
      @last_seven_days[day] =
        ForecastIO.forecast(@location[:latitude], @location[:longitude], time: day.to_time.to_i)
    end
  end
end
