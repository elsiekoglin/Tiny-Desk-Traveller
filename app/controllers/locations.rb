get '/locations' do
  # darksky = ENV['DARK_SKY_API_KEY']

  # erb :'locations/index', locals: {darksky_key: darksky }
end

get '/locations/:id' do
  google = ENV['GOOGLE_API_KEY']
  darksky = ENV['DARK_SKY_API_KEY']
  # @location = Location.find_by(id: params[:id])
  # @lat = @location.lat
  # @lng = @location.lng
  erb :'locations/show', locals: {google_key: google, darksky_key: darksky }
end

