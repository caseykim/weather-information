class @WeatherTable
  constructor: ->
    @skycons = new Skycons
      color: '#FFFFFF'
      resizeClear: true

    @icons = [
      'clear-day'
      'clear-night'
      'partly-cloudy-day'
      'partly-cloudy-night'
      'cloudy'
      'rain'
      'sleet'
      'snow'
      'wind'
      'fog'
    ]

    @icons.forEach (icon) =>
      elems = document.getElementsByClassName(icon)
      @skycons.add(el, icon) for el in elems

    @skycons.play()

document.addEventListener 'turbolinks:load', ->
  new WeatherTable
