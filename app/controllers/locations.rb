require 'net/http'

get '/locations' do

  erb :'locations/index'
end

get '/locations/:id' do
  google = ENV['GOOGLE_API_KEY']
  darksky = ENV['DARK_SKY_API_KEY']
  old_uri = URI("https://api.darksky.net/forecast/#{darksky}/42.345573,-71.098326")
# old_uri = URI("https://darksky.net/dev/docs/forecast")

  uri = Net::HTTP.get(old_uri)
  # @location = Location.find_by(id: params[:id])
  # @lat = @location.lat
  # @lng = @location.lng
  erb :'locations/show', locals: {google_key: google, link: uri }
end

