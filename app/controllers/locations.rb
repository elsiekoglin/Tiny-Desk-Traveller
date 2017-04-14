require 'net/http'

get '/locations' do

  erb :'locations/index'
end

get '/locations/cities' do
  google = ENV['GOOGLE_API_KEY']


  erb :'locations/show', locals: {google_key: google }
end

get '/locations/:id' do
  google = ENV['GOOGLE_API_KEY']
  @location = Location.find_by(id: params[:id])
  @lat = @location.lat
  @lng = @location.lng
  erb :'locations/built_in', locals: {google_key: google }
end
