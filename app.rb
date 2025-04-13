require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:n1/:n2") do
  @n1_value=params.fetch("n1").to_i
  @n2_value=params.fetch("n2").to_i
  @rolls=[]
  @n1_value.times do
    n=rand(1..@n2_value)
    @rolls.push(n)
  end
  erb(:flexible)
end 
