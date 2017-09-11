require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/shipping')

get('/') do
  erb(:index)
end

get('/output') do
  the_package = Parcel.new(params.fetch("length").to_i,params.fetch("width").to_i, params.fetch("height").to_i, params.fetch("weight").to_i)
  the_package.volume
  @cost = the_package.cost_to_ship(params.fetch("speed").to_f,params.fetch("distance").to_f)
  erb(:output)
end
