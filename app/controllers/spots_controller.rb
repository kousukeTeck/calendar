def show
  @spot = Spot.find(params[:id])
  gon.spot = @spot
  gon.api = Rails.application.credentials.open_weather_api_key
end