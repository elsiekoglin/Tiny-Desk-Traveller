get '/locations' do
  # location = Location.find_by(city: params[:city])
  erb :'locations/index'
end

get '/locations/:id' do
  # @location = Location.find_by(id: params[:id])
  # @lat = @location.lat
  # @lng = @location.lng
  erb :'locations/show'
end

