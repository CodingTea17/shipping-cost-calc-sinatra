require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get('/') do
  erb(:index)
end

get('/output') do
  tri = Triangle.new()
  @side1 = params.fetch("side1")
  @side2 = params.fetch("side2")
  @side3 = params.fetch("side3")
  @result = tri.sides(@side1.to_i, @side2.to_i, @side3.to_i)
  erb(:output)
end
