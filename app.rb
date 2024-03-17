require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/dice/:rolls/:sides") do
  @num_dice = params.fetch("rolls").to_i
  @num_sides = params.fetch("sides").to_i 
  
  @roll = []
  
  @num_dice.times do
    
    die = rand(1..@num_sides)

    @roll.push(die)
  end

  erb(:flexible)
end
